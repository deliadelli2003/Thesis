## Ravenna ABL simulation

### Simulation conditions

- **Location:** Calipso buoy, offshore Ravenna
- **Atmospheric stability:** neutral
- **Air temperature:** \(300.15\ \mathrm{K}\)
- **Air density:** \(1.19\ \mathrm{kg\,m^{-3}}\)
- **Latitude:** \(44.43^\circ\)
- **Meteorological-station wind speed:** \(2.06\ \mathrm{m\,s^{-1}}\) at \(10\ \mathrm{m}\)

### ERA5 wind data

Wind data were obtained from the [Copernicus Climate Data Store](https://cds.climate.copernicus.eu/requests?tab=all), using the coordinates of the Calipso buoy.

The dataset contains the eastward and northward wind components at heights of \(10\ \mathrm{m}\) and \(100\ \mathrm{m}\):

| Height | Eastward component | Northward component |
|---:|---:|---:|
| \(10\ \mathrm{m}\) | \(u_{10}=-3.570\ \mathrm{m\,s^{-1}}\) | \(v_{10}=-1.970\ \mathrm{m\,s^{-1}}\) |
| \(100\ \mathrm{m}\) | \(u_{100}=-4.082\ \mathrm{m\,s^{-1}}\) | \(v_{100}=-2.242\ \mathrm{m\,s^{-1}}\) |

Here:

- \(u\) is the velocity component along the east–west direction;
- \(v\) is the velocity component along the north–south direction;
- negative \(u\) indicates motion toward the west;
- negative \(v\) indicates motion toward the south.

### Wind-speed magnitude

The wind-speed magnitude is calculated from its two horizontal components:

```math
U=\sqrt{u^2+v^2}
