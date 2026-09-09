<img width="1089" height="1021" alt="temperature" src="https://github.com/user-attachments/assets/21775a1e-66c3-49b1-aaf2-4758ecae8911" />



## 1. Simulation Time

```text
time.stop_time = 22000.0
time.max_step  = 10
time.fixed_dt  = 0.5
```

* `time.stop_time = 22000.0`

  * Maximum physical simulation time: **22,000 s**.
  * The simulation would stop when this time is reached unless another stopping criterion is reached first.

* `time.max_step = 10`

  * Maximum number of timesteps: **10**.
  * In this test, this criterion is reached first, so the simulation stops after 10 steps.

* `time.fixed_dt = 0.5`

  * Each timestep represents:

    $$
    \Delta t = 0.5\;s
    $$

* Total simulated physical time:

   10 times * 0.5 = 5 s


### Meaning

* The simulation runs for only **5 seconds of physical time**.

---

# 2. Output Frequency

```text
time.plot_interval = 10
time.checkpoint_interval = 5
```

### `time.plot_interval = 10`

* Writes a visualization plotfile every **10 timesteps**.
* This produced:

```text
plt00000
plt00010
```

* These are the files you can visualize in **ParaView**.

### `time.checkpoint_interval = 5`

* Saves a restart/checkpoint every **5 timesteps**.
* This produced:

```text
chk00000
chk00005
chk00010
```

* Checkpoints are mainly used to **restart a simulation** later.

### Summary

```text
plot_interval = 10
        ↓
plt00000
plt00010

checkpoint_interval = 5
        ↓
chk00000
chk00005
chk00010
```

---

# 3. Activated Physics

```text
incflo.physics = ABL
```

* Activates the **Atmospheric Boundary Layer** physics module.
* This tells Kynema that the simulation represents atmospheric flow.

### Current simulation

```text
ABL only
```

### Future thesis simulation

Eventually, for air over a flat ocean, you may need something conceptually like:

```text
incflo.physics = ABL MultiPhase
```

which would give:

```text
ABL
+
air
+
water
+
VOF interface
```

The current `abl_bds` case contains **no water and no VOF**.

---

# 4. Gravity

```text
incflo.gravity = 0.0 0.0 -9.81
```

The three values correspond to:

```text
x   y    z
0   0   -9.81
```

Therefore:

$$
\mathbf{g}=(0,0,-9.81)\;m/s^2
$$

### Meaning

* No gravity acts in `x`.
* No gravity acts in `y`.
* Gravity acts downward in the `z` direction.

```text
          z
          ↑
          |
          |
          |
          ↓ g
       -9.81 m/s²
```

### Why it matters

* Important for atmospheric **buoyancy**.
* Later, in a multiphase air-water simulation, gravity also affects the **water/free surface**.

---

# 5. Initial Wind

```text
incflo.velocity = 6.128355544951824 5.142300877492314 0.0
```

The three values are:

```text
u = 6.128 m/s    → x-direction
v = 5.142 m/s    → y-direction
w = 0 m/s        → vertical direction
```

The total initial wind speed is:

$$
U=\sqrt{u^2+v^2+w^2}
$$

$$
U\approx8\;m/s
$$

The horizontal wind direction is approximately:

$$
40^\circ
$$

from the x-axis.

### Meaning

The initial wind is therefore approximately:

```text
          y
          ↑
          │
          │     ↗ 8 m/s
          │    /
          │   / 40°
          │  /
──────────┼────────────→ x
```

### In ParaView

To see wind speed:

```text
velocity → Magnitude
```

To see individual directions:

```text
velocity_X → u
velocity_Y → v
velocity_Z → w
```

---

# 6. Initial Temperature Profile

```text
ABL.temperature_heights = 650.0 750.0 1000.0
ABL.temperature_values  = 300.0 308.0 308.75
```

The values correspond to:

| Height | Potential temperature |
| -----: | --------------------: |
|  650 m |                 300 K |
|  750 m |                 308 K |
| 1000 m |              308.75 K |

Below 650 m, the temperature remains approximately:

```text
θ = 300 K
```

### Vertical profile

```text
1000 m       308.75 K
   │
   │ weak increase
   │
750 m        308 K
   │
   │ strong increase
   │
650 m        300 K
   │
   │ θ ≈ constant
   │
0 m          300 K
```

### Physical interpretation

#### `0–650 m`

```text
θ ≈ constant
```

Therefore:

$$
\frac{\partial\theta}{\partial z}\approx0
$$

* Approximately **neutral stratification**.
* Buoyancy does not strongly produce or suppress turbulence.

#### `650–750 m`

Temperature increases:

$$
300 \rightarrow 308\;K
$$

over only 100 m.

* This creates a strong **temperature inversion**.
* The inversion acts as a **cap on the ABL**.
* It suppresses vertical mixing through the top of the boundary layer.

#### `750–1000 m`

Temperature continues increasing more slowly.

* Represents the more stably stratified atmosphere above the ABL.

### In ParaView

If colored by `temperature`:

```text
blue       → lower θ
green      → intermediate θ
yellow
red        → higher θ
```

So the blue lower part and warmer upper part you saw come directly from these lines.

---

# 7. Atmospheric Source Terms

```text
ICNS.source_terms = BoussinesqBuoyancy CoriolisForcing ABLForcing
```

Three additional physical forces are included.

---

## 7.1 Boussinesq Buoyancy

```text
BoussinesqBuoyancy
```

* Allows temperature differences to create buoyancy forces.
* Connects the temperature field with vertical fluid motion.

Conceptually:

```text
temperature difference
        ↓
density/buoyancy difference
        ↓
vertical force
        ↓
vertical motion
```

For example:

```text
warmer air → tends to rise ↑

colder air → tends to sink ↓
```

### Why it matters for your thesis

Buoyancy is one of the main differences between:

```text
Stable ABL
Neutral ABL
Unstable ABL
```

* **Stable:** buoyancy suppresses turbulence.
* **Neutral:** buoyancy has little net effect on turbulence.
* **Unstable:** buoyancy generates/enhances turbulence.

---

# 8. Coriolis Force

```text
CoriolisForcing.latitude = 41.3
```

* Sets the latitude to:

$$
41.3^\circ
$$

* Kynema uses this latitude to calculate the Coriolis effect caused by Earth's rotation.

### Physical effect

Coriolis changes the wind direction.

Without other effects:

```text
pressure forcing → wind
```

With rotation:

```text
pressure forcing
       +
Coriolis
       +
surface friction
       ↓
wind speed + wind direction vary with height
```

This can contribute to the formation of an **Ekman-type wind profile** in the ABL.

---

# 9. ABL Forcing

```text
ABLForcing.abl_forcing_height = 90
```

* Sets the reference/forcing height to approximately **90 m**.
* ABL forcing helps maintain or drive the desired atmospheric wind state.

### Why is forcing needed?

Without atmospheric forcing:

```text
surface friction
      ↓
removes momentum
      ↓
wind gradually slows
```

ABL forcing supplies momentum so the atmospheric flow can be maintained.

This will be important when defining the target wind conditions for your thesis.

---

# 10. Surface Roughness

```text
ABL.kappa = 0.41
ABL.surface_roughness_z0 = 0.15
```

## `ABL.kappa`

```text
ABL.kappa = 0.41
```

* Von Kármán constant.
* Used in the logarithmic wall/wind-profile formulation.
* Normally kept close to:

$$
\kappa = 0.41
$$

---

## `ABL.surface_roughness_z0`

```text
ABL.surface_roughness_z0 = 0.15
```

* Surface roughness length:

$$
z_0=0.15\;m
$$

* Controls how strongly the surface slows the wind.

Conceptually:

```text
larger z0
   ↓
rougher surface
   ↓
more surface drag
   ↓
stronger effect on near-surface wind
```

### Important for your thesis

Your final surface is an **ocean**, not land.

Therefore:

```text
z0 = 0.15 m
```

should **not automatically be reused**.

You will eventually need to choose an appropriate ocean aerodynamic roughness.

---

# 11. Turbulence Model

```text
turbulence.model = Smagorinsky
Smagorinsky_coeffs.Cs = 0.135
```

### `turbulence.model = Smagorinsky`

The simulation uses:

```text
LES
+
Smagorinsky SGS model
```

### LES concept

```text
Large turbulent eddies
        ↓
resolved directly by the grid

Small turbulent eddies
        ↓
smaller than grid cells
        ↓
modeled by SGS model
```

### `Cs = 0.135`

```text
Smagorinsky_coeffs.Cs = 0.135
```

* Sets the Smagorinsky model coefficient.
* Controls the modeled SGS turbulent viscosity/dissipation.

---

# 12. Numerical Advection Scheme — BDS

```text
incflo.use_godunov = 1
incflo.godunov_type = "bds"
```

### `incflo.use_godunov = 1`

* Activates the Godunov-type advection treatment.

### `incflo.godunov_type = "bds"`

* Selects the **BDS** transport/reconstruction method.

This is why the simulation folder is called:

```text
abl_bds
```

### Important distinction

This parameter is primarily **numerical**, not physical.

For your thesis:

```text
stable vs neutral vs unstable
```

is initially much more important physically than:

```text
BDS vs WENO vs PLM
```

---

# 13. Computational Domain

```text
geometry.prob_lo = 0.0 0.0 0.0
geometry.prob_hi = 1000.0 1000.0 1000.0
```

### Lower corner

```text
(x,y,z) = (0,0,0)
```

### Upper corner

```text
(x,y,z) = (1000,1000,1000)
```

Therefore the domain is:

$$
1000\times1000\times1000\;m
$$

or:

```text
1 km × 1 km × 1 km
```

---

# 14. Computational Mesh

```text
amr.n_cell = 48 48 48
amr.max_level = 0
```

## Number of cells

```text
48 cells in x
48 cells in y
48 cells in z
```

Total:

$$
48^3 = 110\,592
$$

base-grid cells.

Because:

$$
L=1000\;m
$$

the cell size is approximately:

$$
\Delta x=\Delta y=\Delta z
=
\frac{1000}{48}
\approx20.83\;m
$$

So each cell is approximately:

```text
20.8 m × 20.8 m × 20.8 m
```

---

## AMR

```text
amr.max_level = 0
```

* No additional Adaptive Mesh Refinement level is used.
* The simulation uses the same base resolution throughout the domain.

Conceptually:

```text
same cell size everywhere
```

rather than:

```text
coarse grid
    +
locally finer grid
```

---

# 15. Periodic Boundary Conditions

```text
geometry.is_periodic = 1 1 0
```

The three values correspond to:

```text
x y z
1 1 0
```

Therefore:

```text
x → periodic
y → periodic
z → non-periodic
```

### Periodic means

Fluid leaving one side effectively re-enters from the opposite side.

For example in x:

```text
←────────────────────→
|                    |
|        ABL         |
|                    |
←────────────────────→

left ↔ right
```

And the same happens in `y`.

### Physical purpose

This represents a **horizontally homogeneous ABL** without needing an enormous horizontal domain.

---

# 16. Bottom Boundary

```text
zlo.type = "wall_model"
```

`zlo` means:

```text
z-low
=
bottom boundary
```

The bottom of the domain uses a **wall model**.

### What the wall model does

Instead of resolving the extremely thin region directly next to the surface, Kynema estimates the surface stress using parameters such as:

```text
ABL.kappa
ABL.surface_roughness_z0
```

Conceptually:

```text
surface roughness
      ↓
wall model
      ↓
surface shear stress
      ↓
wind slows near surface
      ↓
vertical wind shear
```

### For this test

The bottom behaves like a rough ground surface.

### For your thesis

Eventually the lower atmospheric boundary will be related to the **air-ocean interface**, so this part of the setup will change substantially when you introduce multiphase/VOF physics.

---

# 17. Top Boundary

```text
zhi.type = "slip_wall"
```

`zhi` means:

```text
z-high
=
top boundary
```

### Slip wall

* Fluid cannot move through the boundary.
* Fluid can move tangentially along the boundary.

Conceptually:

```text
──────────── top boundary
→ → → → →   allowed

     ↑
     ✕       cannot cross boundary
```

---

# 18. Top Temperature Boundary Condition

```text
zhi.temperature_type = "fixed_gradient"
zhi.temperature = 0.003
```

### `fixed_gradient`

Instead of fixing the temperature itself, Kynema fixes its vertical gradient.

Here:

$$
\frac{d\theta}{dz}
=
0.003\;K/m
$$

Notice that your upper initial temperature profile is:

```text
750 m    → 308 K
1000 m   → 308.75 K
```

Therefore:

$$
\frac{308.75-308}{1000-750}
=
\frac{0.75}{250}
=
0.003\;K/m
$$

So the top boundary gradient is **consistent with the initial temperature profile above the ABL**.

---

# Quick Reference

| Code                                      | Meaning                    | Physical importance        |
| ----------------------------------------- | -------------------------- | -------------------------- |
| `time.max_step = 10`                      | Stop after 10 timesteps    | Simulation length          |
| `time.fixed_dt = 0.5`                     | 0.5 s per step             | Time resolution            |
| `time.plot_interval = 10`                 | Write plot every 10 steps  | ParaView output            |
| `time.checkpoint_interval = 5`            | Save restart every 5 steps | Restart simulation         |
| `incflo.physics = ABL`                    | Activate ABL physics       | Atmospheric simulation     |
| `incflo.gravity = 0 0 -9.81`              | Downward gravity           | Buoyancy / future water    |
| `incflo.velocity = ...`                   | Initial wind               | Wind speed/direction       |
| `ABL.temperature_heights`                 | Heights of θ profile       | Atmospheric stratification |
| `ABL.temperature_values`                  | θ values                   | Stable/neutral structure   |
| `BoussinesqBuoyancy`                      | Thermal buoyancy           | Stability                  |
| `CoriolisForcing`                         | Earth's rotation           | Wind direction             |
| `ABLForcing`                              | Drives mean atmosphere     | Maintains wind             |
| `ABL.kappa = 0.41`                        | Von Kármán constant        | Wall model                 |
| `ABL.surface_roughness_z0`                | Surface roughness          | Surface drag               |
| `turbulence.model = Smagorinsky`          | LES SGS model              | Unresolved turbulence      |
| `godunov_type = "bds"`                    | Numerical advection scheme | Numerical method           |
| `geometry.prob_hi`                        | Domain dimensions          | Physical domain            |
| `amr.n_cell`                              | Number of cells            | Grid resolution            |
| `amr.max_level = 0`                       | No AMR                     | Uniform mesh               |
| `geometry.is_periodic = 1 1 0`            | Periodic x/y               | Homogeneous ABL            |
| `zlo.type = "wall_model"`                 | Bottom wall model          | Surface stress             |
| `zhi.type = "slip_wall"`                  | Top slip wall              | Upper boundary             |
| `zhi.temperature_type = "fixed_gradient"` | Fixed θ gradient           | Upper stratification       |


