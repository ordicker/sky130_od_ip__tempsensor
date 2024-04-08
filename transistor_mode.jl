# in ngspice run a simulation and after run this
# $ set altshow
# $ show >> <filename>

function parse(filename)
    trasistors = []
    open(filename) do file
        while !eof(file)
            line = readline(file)
            # find nfet and pfet
            device_str = r"model.*=.*\.(.*):.*([n|p]fet).*"
            # find vgs, vds, vth, id
            param_str = r"(vgs|vds|vth|id|vdsat)[ ]*=(.*)"
            m = match(device_str ,line)
            if m==nothing continue end
            tras = Dict() # new device 
            tras["name"] = m.captures[1]
            tras["type"] = m.captures[2]
            while !eof(file)
                line = readline(file)
                m = match(param_str ,line)
                if m!=nothing
                    tras[m.captures[1]] =
                        tryparse(Float64 ,m.captures[2])
                end
                if match(device_str ,line)!=nothing break end
            end
            skip(file,-length(line))
            push!(trasistors,tras)
        end
    end
    return trasistors
end

function trasistor_mode(tras)
    if tras["type"]=="nfet"
        if tras["vgs"]<=tras["vth"] return "Cutoff" end
        if tras["vds"]>=tras["vdsat"]
            return "Saturation"
        else
            return "linear!"
        end
    end
    if tras["type"]=="pfet"
        if abs(tras["vgs"])<=abs(tras["vth"]) return "Cutoff" end
        if abs(tras["vds"])>=abs(tras["vdsat"])
            return "Saturation"
        else
            return "linear!"
        end
        
    end
end

mode(tras) = println(
    rpad(tras["type"],5),"|", rpad(tras["name"],7),"|",
    rpad(trasistor_mode(tras),12),
    "| |vgs-vth| = ", rpad(abs(tras["vgs"]-tras["vth"]),23),
    "| vgs = ", rpad(tras["vgs"],17),
    "| vth = ", rpad(tras["vth"],17),
    "| vdsat = ", rpad(tras["vdsat"],17),
    "| vds = ",rpad(abs(tras["vds"]),17),
    "| id = ",rpad(abs(tras["id"]),17)
)
