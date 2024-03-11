# sky130_od_ip__tempsensor
Temperature sensor design in sky130 technology.  #chipalooza_challenge 
Based on [design](https://picture.iczhiku.com/resource/ieee/wHKkdSugHJQARbmb.pdf).

## Environment
```shell
export PDK_ROOT=/usr/local/share/pdk
export PDK=sky130A
```
## Setup 
```shell
cp $PDK_ROOT/sky130A/libs.tech/xschem/xschemrc .
cp $PDK_ROOT/sky130A/libs.tech/magic/sky130A.magicrc ./.magicrc
cp $PDK_ROOT/sky130A/libs.tech/ngspice/spinit  ~/.xschem/simulations/.spiceinit
```

### optional 
- Adding ```num_threads=8``` to ```.spiceinit``` 
