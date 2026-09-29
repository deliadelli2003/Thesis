<img width="869" height="1207" alt="code" src="https://github.com/user-attachments/assets/17ced835-d1b7-4f74-bd64-122e8d02f899" />


| Section | Parameter | Value | Description |
|---|---|---|---|
| Simulation stop | `time.stop_time` | `22000.0` | Maximum simulated time |
| Simulation stop | `time.max_step` | `10` | Maximum number of time steps |
| Time step | `time.fixed_dt` | `0.5` | Fixed time-step size |
| Time step | `time.cfl` | `0.95` | CFL factor |
| Input/output | `time.plot_interval` | `10` | Steps between plot files |
| Input/output | `time.checkpoint_interval` | `5` | Steps between checkpoint files |
| Physics | `incflo.gravity` | `0.0 0.0 -9.81` | Gravitational acceleration vector |
| Physics | `incflo.density` | `1.0` | Reference fluid density |
| Numerical method | `incflo.use_godunov` | `1` | Activates the Godunov advection method |
| Numerical method | `incflo.godunov_type` | `"bds"` | Godunov advection scheme |
| Numerical method | `incflo.diffusion_type` | `2` | Numerical treatment of diffusion |
| Transport | `transport.viscosity` | `1.0e-5` | Kinematic viscosity |
| Transport | `transport.laminar_prandtl` | `0.7` | Laminar Prandtl number |
| Transport | `transport.turbulent_prandtl` | `0.3333` | Turbulent Prandtl number |
| Transport | `transport.reference_temperature` | `300.0` | Reference temperature |
| Turbulence | `turbulence.model` | `Smagorinsky` | Subgrid-scale turbulence model |
| Turbulence | `Smagorinsky_coeffs.Cs` | `0.135` | Smagorinsky coefficient |
| Physics model | `incflo.physics` | `ABL` | Atmospheric boundary-layer model |
| Source terms | `ICNS.source_terms` | `BoussinesqBuoyancy CoriolisForcing ABLForcing` | Momentum-equation source terms |
| Coriolis | `CoriolisForcing.latitude` | `41.3` | Latitude used to calculate Coriolis forcing |
| ABL forcing | `ABLForcing.abl_forcing_height` | `90` | Height at which the ABL wind is forced |
| Initial condition | `incflo.velocity` | `6.1283555 5.1423009 0.0` | Initial velocity vector |
| Temperature | `ABL.temperature_heights` | `650.0 750.0 1000.0` | Heights defining the initial temperature profile |
| Temperature | `ABL.temperature_values` | `300.0 308.0 308.75` | Temperature values at the specified heights |
| Wall model | `ABL.kappa` | `0.41` | von Kármán constant |
| Wall model | `ABL.surface_roughness_z0` | `0.15` | Aerodynamic roughness length |
| Mesh | `amr.n_cell` | `48 48 48` | Number of base-grid cells in \(x,y,z\) |
| Mesh | `amr.max_level` | `0` | Maximum AMR refinement level |
| Geometry | `geometry.prob_lo` | `0.0 0.0 0.0` | Lower corner of the computational domain |
| Geometry | `geometry.prob_hi` | `1000.0 1000.0 1000.0` | Upper corner of the computational domain |
| Geometry | `geometry.is_periodic` | `1 1 0` | Periodicity in \(x,y,z\) |
| Lower boundary | `zlo.type` | `"wall_model"` | Bottom boundary condition |
| Upper boundary | `zhi.type` | `"slip_wall"` | Top velocity boundary condition |
| Upper boundary | `zhi.temperature_type` | `"fixed_gradient"` | Top temperature boundary condition |
| Upper boundary | `zhi.temperature` | `0.003` | Imposed potential-temperature gradient |
| Output verbosity | `incflo.verbose` | `0` | Amount of solver information printed |
| Memory | `amrex.the_arena_is_managed` | `1` | Activates AMReX managed-memory arena |
| Output management | `amrex.async_out` | `0` | Disables asynchronous output |
| Memory | `amrex.the_arena_init_size` | `4500000000` | Initial AMReX memory-arena size in bytes |
