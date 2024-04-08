# Running CACE "locally" 
On the SETUP tab in the CACE test
- Comment out: 
```
*.include {DUT_path}
```
- Add those lines 
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

vbe1=[7.444929e-01
	  7.348961e-01
      7.248788e-01
      7.144194e-01
      7.035118e-01
      6.921460e-01
      6.803212e-01
      6.680478e-01
      6.553457e-01
      6.422410e-01
      6.287627e-01
      6.149403e-01
      6.008018e-01
      5.863727e-01
      5.716746e-01
      5.567256e-01
      5.415417e-01];

Δvbe=[3.274655e-02
      3.411318e-02
      3.549734e-02
      3.689739e-02
      3.831229e-02
      3.974217e-02
      4.118770e-02
      4.264978e-02
      4.412940e-02
      4.562758e-02
      4.714535e-02
      4.868374e-02
      5.024377e-02
      5.182647e-02
      5.343286e-02
      5.506391e-02
      5.672060e-02];

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
