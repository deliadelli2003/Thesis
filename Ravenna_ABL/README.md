## Ravenna ABL simulation

### Simulation conditions

- **Location:** Calipso buoy, offshore Ravenna
- **Date:** 26 September 2026
- **Time:** 14:00 UTC
- **Atmospheric condition:** neutral
- **Air temperature:** 300.15 K
- **Air density:** 1.19 kg/m³
- **Latitude:** 44.43°
- **Meteorological-station wind speed:** 2.06 m/s at 10 m

### ERA5 wind data

The wind data were obtained from the [Copernicus Climate Data Store](https://cds.climate.copernicus.eu/requests?tab=all), using the coordinates of the Calipso buoy.

The eastward and northward wind components were extracted at heights of 10 m and 100 m.

| Height | Eastward component `u` | Northward component `v` |
|---|---:|---:|
| 10 m | `u10 = -3.570 m/s` | `v10 = -1.970 m/s` |
| 100 m | `u100 = -4.082 m/s` | `v100 = -2.242 m/s` |

The components have the following meanings:

- `u` is the wind-velocity component along the east–west direction.
- `v` is the wind-velocity component along the north–south direction.
- A negative value of `u` indicates motion toward the west.
- A negative value of `v` indicates motion toward the south.

### Wind-speed magnitude

The magnitude of the horizontal wind velocity is calculated as:

```math
U = \sqrt{u^2+v^2}
