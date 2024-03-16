# Running CACE "locally" 
On the SETUP tab in the CACE test
- Comment out: 
```
*.include {DUT_path}
```
- Add this lines 
```
.param corner=tt
.param temperature=27
.param vdd=1.8
.param vss=0.0
.param ena=1.8
.param rout=100M
.param cout=100f
```
