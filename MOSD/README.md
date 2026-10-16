caso ChannelFlow basato sui parametri di Wang viene utilizzato per verificare l’implementazione MOSD in Kynema-SGF attraverso il confronto con i risultati wave-resolved di Wang e con quelli ottenuti mediante LESGO-MOSD da Ayala.

# MOSD ChannelFlow — preliminary simulation parameters

## 1. Objective

The objective is to evaluate whether the implementation of the Moving Surface Drag model in Kynema-SGF can reproduce the principal mean-flow and turbulence statistics of the traveling-wave case investigated by Wang et al. and previously simulated using MOSD in LESGO by Ayala et al.

The simulation is a numerical ChannelFlow benchmark:

```ini
incflo.physics = ChannelFlow
```

It is separate from the atmospheric boundary-layer simulation of the Ravenna case.

---

## 2. Reference parameters

The following non-dimensional parameters are taken from the Wang/Ayala reference case:

| Parameter | Symbol | Value | Meaning |
|---|---:|---:|---|
| Friction Reynolds number | \(Re_\tau\) | \(1133\), approximately \(1000\) | Defines the flow regime |
| Wave slope | \(ak\) | \(0.10\) | Describes the wave steepness |
| Wave age | \(c/u_*\) | \(2.00\) | Relates the wave speed to the friction velocity |
| Reference channel height | \(h\) | \(700\ \mathrm{m}\) | Geometrical scaling length |
| Target cell size | \(\Delta\) | approximately \(12\ \mathrm{m}\) | Spatial resolution |

The friction Reynolds number is defined as:

```math
Re_\tau
=
\frac{u_*h}{\nu},
```

where:

- \(u_*\) is the friction velocity;
- \(h\) is the reference channel height;
- \(\nu\) is the kinematic viscosity.

Therefore:

```math
u_*
=
\frac{Re_\tau\nu}{h}.
```

The viscosity, friction velocity and ChannelFlow forcing must be selected consistently to reproduce the target value of \(Re_\tau\).

---

## 3. Computational domain

The proposed domain follows the dimensions used in the MOSD configuration with LESGO:

```math
L_x=2\pi h,
\qquad
L_y=\pi h,
\qquad
L_z=h.
```

Using:

```math
h=700\ \mathrm{m},
```

the streamwise length is:

```math
L_x
=
2\pi(700)
=
4398.23\ \mathrm{m}.
```

The spanwise width is:

```math
L_y
=
\pi(700)
=
2199.11\ \mathrm{m}.
```

The vertical height is:

```math
L_z
=
700\ \mathrm{m}.
```

The proposed Kynema geometry is:

```ini
geometry.prob_lo = 0.0 0.0 0.0
geometry.prob_hi = 4398.23 2199.11 700.0
geometry.is_periodic = 1 1 0
```

The domain is periodic in the streamwise and spanwise directions.

---

## 4. Mesh calculation

The target cell size is:

```math
\Delta x
\approx
\Delta y
\approx
\Delta z
\approx
12\ \mathrm{m}.
```

The theoretical number of cells in the streamwise direction is:

```math
N_x
=
\frac{L_x}{\Delta x}
=
\frac{4398.23}{12}
=
366.52.
```

The theoretical number of cells in the spanwise direction is:

```math
N_y
=
\frac{L_y}{\Delta y}
=
\frac{2199.11}{12}
=
183.26.
```

The theoretical number of cells in the vertical direction is:

```math
N_z
=
\frac{L_z}{\Delta z}
=
\frac{700}{12}
=
58.33.
```

The preliminary mesh is therefore:

```ini
amr.n_cell = 368 184 58
amr.max_level = 0
```

The resulting streamwise resolution is:

```math
\Delta x
=
\frac{4398.23}{368}
=
11.952\ \mathrm{m}.
```

The resulting spanwise resolution is:

```math
\Delta y
=
\frac{2199.11}{184}
=
11.952\ \mathrm{m}.
```

The resulting vertical resolution is:

```math
\Delta z
=
\frac{700}{58}
=
12.069\ \mathrm{m}.
```

### Mesh summary

| Direction | Domain size | Number of cells | Effective resolution |
|---|---:|---:|---:|
| Streamwise, \(x\) | \(4398.23\ \mathrm{m}\) | 368 | \(11.952\ \mathrm{m}\) |
| Spanwise, \(y\) | \(2199.11\ \mathrm{m}\) | 184 | \(11.952\ \mathrm{m}\) |
| Vertical, \(z\) | \(700\ \mathrm{m}\) | 58 | \(12.069\ \mathrm{m}\) |

The total number of cells is:

```math
N_{\mathrm{tot}}
=
N_xN_yN_z.
```

Therefore:

```math
N_{\mathrm{tot}}
=
368
\times
184
\times
58
=
3\,927\,296.
```

The proposed domain contains approximately \(3.93\) million cells.

The final mesh dimensions and the AMReX blocking factor must be confirmed before running the simulation on Helma.

---

## 5. Wave geometry

The domain is assumed to contain four waves in the streamwise direction:

```math
n_\lambda=4.
```

The wavelength is therefore:

```math
\lambda
=
\frac{L_x}{n_\lambda}.
```

Substituting the domain length:

```math
\lambda
=
\frac{4398.23}{4}
=
1099.56\ \mathrm{m}.
```

Equivalently:

```math
\lambda
=
\frac{2\pi h}{4}
=
\frac{\pi h}{2}.
```

---

## 6. Wavenumber

The wavenumber is defined as:

```math
k
=
\frac{2\pi}{\lambda}.
```

Substituting the wavelength:

```math
k
=
\frac{2\pi}{1099.56}
=
0.005714\ \mathrm{m^{-1}}.
```

Since the domain contains four waves:

```math
k
=
\frac{4}{h}.
```

The corresponding non-dimensional wavenumber is:

```math
kh=4.
```

---

## 7. Wave amplitude

The reference wave slope is:

```math
ak=0.10.
```

The amplitude is consequently:

```math
a
=
\frac{0.10}{k}.
```

Substituting the wavenumber:

```math
a
=
\frac{0.10}{0.005714}
=
17.5\ \mathrm{m}.
```

The complete crest-to-trough wave height is:

```math
H
=
2a
=
35\ \mathrm{m}.
```

The MOSD amplitude parameter is provisionally:

```ini
wave_mosd.amplitude = 17.5
```

---

## 8. Wave phase velocity

The wave age is:

```math
\frac{c}{u_*}
=
2.
```

The phase velocity is therefore:

```math
c
=
2u_*.
```

A numerical value for \(c\) can only be calculated after the friction velocity \(u_*\) has been determined.

---

## 9. Wave frequency

For a monochromatic wave, the angular frequency is related to the phase velocity and wavenumber through:

```math
\omega
=
kc.
```

Since:

```math
c=2u_*,
```

then:

```math
\omega
=
2ku_*.
```

Using:

```math
k=\frac{4}{h},
```

the angular frequency becomes:

```math
\omega
=
\frac{8u_*}{h}.
```

With:

```math
h=700\ \mathrm{m},
```

this gives:

```math
\omega
=
\frac{8u_*}{700}.
```

The value of `wave_mosd.frequency` must be calculated after \(u_*\) has been defined and after confirming whether Kynema expects angular frequency \(\omega\) in radians per second or ordinary frequency \(f\) in hertz.

```ini
wave_mosd.frequency = ...
```

---

## 10. Wave-resolution check

The number of grid cells per wavelength is:

```math
N_\lambda
=
\frac{\lambda}{\Delta x}.
```

Substituting the proposed values:

```math
N_\lambda
=
\frac{1099.56}{11.952}
\approx
92.
```

Therefore, each wavelength is represented by approximately 92 horizontal cells.

The MOSD paper requires at least eight cells per wavelength:

```math
N_\lambda\geq8.
```

The proposed mesh satisfies this requirement:

```math
92>8.
```

The number of waves contained in the domain is:

```math
\frac{L_x}{\lambda}
=
\frac{4398.23}{1099.56}
=
4.
```

Therefore, the minimum requirement of four waves in the domain is also satisfied.

---

## 11. Wall-model sampling height

If MOSD uses the LES velocity at the centre of the third vertical cell, the sampling height is:

```math
\Delta_{\mathrm{wm}}
=
2.5\Delta z.
```

Using:

```math
\Delta z
=
12.069\ \mathrm{m},
```

the wall-model sampling height is:

```math
\Delta_{\mathrm{wm}}
=
2.5(12.069)
=
30.17\ \mathrm{m}.
```

The geometrical requirement is:

```math
a
<
0.99\Delta_{\mathrm{wm}}.
```

For the proposed wave:

```math
0.99\Delta_{\mathrm{wm}}
=
0.99(30.17)
=
29.87\ \mathrm{m}.
```

Since:

```math
17.5
<
29.87,
```

the amplitude satisfies the wall-model sampling-height condition.

---

## 12. Boundary conditions

The proposed boundary conditions are:

| Boundary | Condition |
|---|---|
| Streamwise direction, \(x\) | Periodic |
| Spanwise direction, \(y\) | Periodic |
| Lower surface, \(z=0\) | MOSD wall model |
| Upper surface | Slip wall |

The corresponding preliminary Kynema settings are:

```ini
geometry.is_periodic = 1 1 0

zlo.type = "wall_model"
WallFunction.wall_shear_stress_type = mosd

zhi.type = "slip_wall"
```

---

## 13. Preliminary MOSD parameters

The currently calculated wave parameters are:

```ini
wave_mosd.amplitude = 17.5
wave_mosd.wavenumber = 0.005714
wave_mosd.frequency = ...
```

The frequency remains undefined because it depends on the friction velocity:

```math
c=2u_*,
```

```math
\omega=kc.
```

---

## 14. Preliminary Kynema configuration

```ini
incflo.physics = ChannelFlow

geometry.prob_lo = 0.0 0.0 0.0
geometry.prob_hi = 4398.23 2199.11 700.0
geometry.is_periodic = 1 1 0

amr.n_cell = 368 184 58
amr.max_level = 0

zlo.type = "wall_model"
WallFunction.wall_shear_stress_type = mosd

wave_mosd.amplitude = 17.5
wave_mosd.wavenumber = 0.005714
wave_mosd.frequency = ...

zhi.type = "slip_wall"
```

---

## 15. Parameters requiring confirmation

The following parameters must be confirmed before submitting the simulation on Helma:

| Parameter | Reason |
|---|---|
| `amr.blocking_factor` | The mesh must be compatible with the AMReX grid decomposition |
| Final value of \(N_z\) | The proposed value 58 is not divisible by 8 |
| Kinematic viscosity \(\nu\) | Required to reproduce the target \(Re_\tau\) |
| Friction velocity \(u_*\) | Required to determine forcing and wave velocity |
| ChannelFlow forcing | Must maintain the required flow condition |
| `wave_mosd.frequency` | Depends on \(u_*\) and the convention used by Kynema |
| Time step | Must satisfy the CFL condition |
| Spin-up duration | Required to obtain statistically developed turbulence |
| Averaging start time | Must be selected after spin-up |
| Averaging duration | Must provide statistically reliable quantities |
| SGS turbulence model | Must be consistent with the comparison case |
| Number of GPUs | Required for the Helma submission |
| Number of MPI processes | Must be consistent with the GPU decomposition |

---

## 16. Interpretation of the comparison

The simulation does not reproduce the wave geometry explicitly. Wang et al. resolve the moving wavy boundary, whereas MOSD represents its effect by applying a phase-dependent surface stress to a flat computational boundary.

The comparison will therefore evaluate whether Kynema-SGF with MOSD reproduces the principal statistics of the reference case, including:

- mean velocity profiles;
- Reynolds-stress profiles;
- streamwise turbulence intensity;
- turbulent kinetic energy;
- total surface stress;
- wave-induced form drag.

The comparison should be performed using non-dimensional quantities such as:

```math
\frac{\langle U\rangle}{u_*},
```

```math
\frac{z}{h},
```

and:

```math
\frac{\langle u_i'u_j'\rangle}{u_*^2}.
```
