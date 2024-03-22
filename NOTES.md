# Running CACE "locally" 
On the SETUP tab in the CACE test
- Comment out: 
```
*.include {DUT_path}
```
- Add this lines 
```
.param temperature=27
.param vdd=1.8
.param vss=0.0
.param ena=1.8
.param rout=100M
.param cout=100f
```

```julia
using Plots
using Statistics

t=[ -4.00000e+01
	-3.00000e+01
	-2.00000e+01
	-1.00000e+01
	0.000000e+00
	1.000000e+01
	2.000000e+01
	3.000000e+01
	4.000000e+01
	5.000000e+01
	6.000000e+01
	7.000000e+01
	8.000000e+01
	9.000000e+01
	1.000000e+02
	1.100000e+02
	1.200000e+02];

vbe1=[6.500286e-01
	6.386302e-01
	6.268189e-01
	6.150873e-01
	6.032124e-01
	5.911775e-01
	5.789879e-01
	5.666449e-01
	5.541555e-01
	5.415274e-01
	5.287693e-01
	5.158923e-01
	5.029079e-01
	4.898329e-01
	4.766882e-01
	4.635039e-01
	4.503230e-01];
					
Δvbe=[3.051343e-02
	3.155990e-02
	3.275899e-02
	3.396716e-02
	3.520893e-02
	3.647733e-02
	3.776523e-02
	3.906762e-02
	4.038095e-02
	4.170258e-02
	4.303066e-02
	4.436385e-02
	4.570126e-02
	4.704243e-02
	4.838728e-02
	4.973621e-02
	5.109012e-02];

a,b=[t ones(length(t))]\vbe1
Δa,Δb=[t ones(length(t))]\Δvbe
α=-a/Δa

μ=α./(α.+vbe1./Δvbe)
a,b=[μ ones(length(μ))]\t
f(x)=a*x+b
plot(t,[f.(μ)-t])
SS_tot=var(t)
SSres=var(t.-f.(μ))
R2=1-SSres/SS_tot
Linearity = (1-R2)*100
```					
