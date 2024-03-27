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

vbe1=[7.448557e-01
	  7.352749e-01
	  7.252728e-01
	  7.148273e-01
	  7.039307e-01
	  6.925724e-01
	  6.807497e-01
	  6.684678e-01
	  6.557371e-01
	  6.425786e-01
	  6.290246e-01
	  6.151095e-01
	  6.008653e-01
	  5.863207e-01
	  5.715004e-01
	  5.564256e-01
	  5.411142e-01];

Δvbe=[3.274517e-02
	  3.411228e-02
	  3.549690e-02
	  3.689748e-02
	  3.831300e-02
	  3.974361e-02
	  4.119000e-02
	  4.265300e-02
	  4.413345e-02
	  4.563210e-02
	  4.714976e-02
	  4.868722e-02
	  5.024533e-02
	  5.182494e-02
	  5.342692e-02
	  5.505215e-02
	  5.670154e-02];

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
