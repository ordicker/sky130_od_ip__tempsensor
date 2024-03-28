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
            param_str = r"(vgs|vds|vth|id)[ ]*=(.*)"
            m = match(device_str ,line)
            if m==nothing continue end
            tras = Dict() # new device 
            tras["name"] = m.captures[1]
            tras["type"] = m.captures[2]
            while true # do while
                line = readline(file)
                m = match(param_str ,line)
                if m!=nothing
                    tras[m.captures[1]] =
                        tryparse(Float64 ,m.captures[2])
                end
                if match(device_str ,line)!=nothing break end
            end
            skip(file,-1) #backone line
            push!(trasistors,tras)
        end
    end
    trasistors
end

