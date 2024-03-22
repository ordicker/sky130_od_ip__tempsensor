# sky130_od_ip__tempsensor
Temperature sensor design in sky130 technology.  #chipalooza_challenge 
Based on [design](https://picture.iczhiku.com/resource/ieee/wHKkdSugHJQARbmb.pdf).

# Specifications

| Parameter                    | Min  | Typical | Max  | Unit | Notes                                            |
|:-----------------------------|:-----|:--------|:-----|:-----|:-------------------------------------------------|
| Operating Temperature Range  | -40  | 25      | 125  | °C   | Commercial/industrial                            |
| Temperature Accuracy         | -2   | ±0.5    | 2    | °C   | At room temperature                              |
| Temparature Accuracy         |      |         | 5    | °C   | Across all corners                               |
| Temperature Resolution       | 0.06 | 0.1     | 0.5  | °C   |                                                  |
| Power Consumption (enabled)  |      | 10      | 20   | µA   | At nominal conditions                            |
| Power Consumption (disabled) |      | 5       | 10   | nA   | Current consumption when inactive                |
| Response Time                | 5    | 10      | 20   | ms   | Time to reach 90% of the final temperature value |
| Supply Voltage Sensitivity   |      | 0.01    | 0.05 | %/V  |                                                  |
| Linearity                    |      |         | 1    | %    | Deviation from a straight line                   |

# Pinout

| name | use            |             |
|:-----|:---------------|:------------|
| vdd  | digital power  | 1.8v        |
| vss  | digital ground | 0.0v        |
| ena  | enable         | 1.8v domain |
| Vbe1 | signal output  | 1.8v domain |
| Vbe2 | signal output  | 1.8v domain |

## Currently:
- Vbe1 ~ 450mV-650mV
- ΔVbe=Vbe2-Vbe1 ~ 30mV-50mV
- α = 9.7783
- T = 753.402*μ-271.842 where μ = α/(α+Vbe1/ΔVbe)
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
