## Parameters to define for the new flat-surface case


| Section | Parameter | Original value | Proposed value | Supervisor value | Reason |
|---|---|---:|---:|---|---|
| Domain | `geometry.prob_hi` | `1000.0 1000.0 1000.0` | `101.17 50.59 16.86` | __________ | Domain containing five dominant wavelengths |
| Mesh | `amr.n_cell` | `48 48 48` | `80 40 80` | __________ | Provides 16 cells per wavelength |
| Simulation time | `time.stop_time` | `22000.0` | __________ | __________ | Total physical duration must be selected |
| Simulation time | `time.max_step` | `10` | __________ | __________ | Must allow the simulation to reach `stop_time` |
| Time step | `time.fixed_dt` | `0.5` | `0.05` | __________ | Provides 72 time steps per wave period |
| CFL | `time.cfl` | `0.95` | `0.95` or lower | __________ | Must satisfy numerical stability |
| Plot output | `time.plot_interval` | `10` | `100` | __________ | Proposed output every 5 simulated seconds |
| Checkpoint output | `time.checkpoint_interval` | `5` | `1000` | __________ | Avoids producing too many checkpoint files |
| Density | `incflo.density` | `1.0` | `1.19` | __________ | Estimated from Ravenna air temperature and pressure |
| Viscosity | `transport.viscosity` | `1.0e-5` | `1.6e-5` | __________ | Approximate air viscosity at \(27^\circ\mathrm{C}\) |
| Reference temperature | `transport.reference_temperature` | `300.0` | `300.15` | __________ | Ravenna air temperature in kelvin |
| Latitude | `CoriolisForcing.latitude` | `41.3` | `44.43` | __________ | Latitude of the Calipso/Ravenna area |
| Initial velocity | `incflo.velocity` | `6.1284 5.1423 0.0` | `2.06 0.0 0.0` | __________ | Domain aligned with the measured wind |
| ABL forcing height | `ABLForcing.abl_forcing_height` | `90` | __________ | __________ | Original value is above the proposed domain |
| Source terms | `ICNS.source_terms` | `BoussinesqBuoyancy CoriolisForcing ABLForcing` | __________ | __________ | Must be selected for the reduced-height domain |
| Temperature heights | `ABL.temperature_heights` | `650.0 750.0 1000.0` | __________ | __________ | Original heights are outside the new domain |
| Temperature values | `ABL.temperature_values` | `300.0 308.0 308.75` | Uniform neutral profile | __________ | The first simulation should be neutral |
| Surface roughness | `ABL.surface_roughness_z0` | `0.15` | __________ | __________ | Original value represents a rough land surface |
| Upper temperature gradient | `zhi.temperature` | `0.003` | `0.0` | __________ | Proposed neutral thermal condition |
| Statistics output | `ABL.stats_output_frequency` | Not included | __________ | __________ | Needed for mean profiles and turbulence statistics |


*keep unchanged*
| Section | Parameter | Value |
|---|---|---:|
| Gravity | `incflo.gravity` | `0.0 0.0 -9.81` |
| Numerical method | `incflo.use_godunov` | `1` |
| Numerical method | `incflo.godunov_type` | `"bds"` |
| Numerical method | `incflo.diffusion_type` | `2` |
| Transport | `transport.laminar_prandtl` | `0.7` |
| Transport | `transport.turbulent_prandtl` | `0.3333` |
| Turbulence model | `turbulence.model` | `Smagorinsky` |
| Smagorinsky coefficient | `Smagorinsky_coeffs.Cs` | `0.135` |
| Physics model | `incflo.physics` | `ABL` |
| von Kármán constant | `ABL.kappa` | `0.41` |
| AMR | `amr.max_level` | `0` |
| Lower domain corner | `geometry.prob_lo` | `0.0 0.0 0.0` |
| Periodicity | `geometry.is_periodic` | `1 1 0` |
| Bottom boundary | `zlo.type` | `"wall_model"` |
| Top boundary | `zhi.type` | `"slip_wall"` |
| Top thermal condition | `zhi.temperature_type` | `"fixed_gradient"` |
| Verbosity | `incflo.verbose` | `0` |
| Memory management | `amrex.the_arena_is_managed` | `1` |
| Asynchronous output | `amrex.async_out` | `0` |
| Initial memory size | `amrex.the_arena_init_size` | `4500000000` |
```
