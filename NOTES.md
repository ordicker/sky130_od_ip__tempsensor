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

vbe1=[7.151184e-01
	7.055835e-01
	6.957143e-01
	6.853769e-01
	6.744771e-01
	6.629637e-01
	6.508286e-01
	6.380959e-01
	6.248082e-01
	6.110157e-01
	5.967690e-01
	5.821153e-01
	5.670965e-01
	5.517491e-01
	5.361046e-01
	5.201899e-01
	5.040278e-01];




Δvbe=[3.290089e-02
	3.421912e-02
	3.556385e-02
	3.692908e-02
	3.831007e-02
	3.970382e-02
	4.110847e-02
	4.252285e-02
	4.394625e-02
	4.537832e-02
	4.681891e-02
	4.826804e-02
	4.972587e-02
	5.119263e-02
	5.266868e-02
	5.415442e-02
	5.565036e-02];

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
