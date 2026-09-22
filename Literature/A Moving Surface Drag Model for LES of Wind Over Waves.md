## 1 Introduction — Important concepts

Wind–wave interaction is the exchange of momentum and energy between the atmospheric boundary layer and the ocean surface. It is important for:

- weather and climate prediction;
- coastal engineering;
- marine operations;
- offshore wind-energy applications.

Waves modify the structure of the turbulent airflow above the ocean. At the same time, wind transfers momentum and energy to the waves, influencing their growth.

### Air–sea momentum transfer

Momentum is transferred across the air–water interface through two principal mechanisms:

1. **Viscous stress:** tangential friction acting directly along the surface.
2. **Form drag:** pressure differences between the windward and leeward sides of the waves.

Form drag becomes particularly important when the waves have significant slope. Experiments show that wave geometry influences the pressure distribution, turbulent airflow and total momentum flux.

### Numerical approaches

Several numerical methods can be used to simulate airflow over waves.

#### Reynolds-averaged simulations

RANS models calculate the mean flow and model all turbulent fluctuations.

They are computationally inexpensive, but their predictions depend strongly on the turbulence closure model. Different closure models may therefore produce different wave-growth and momentum-transfer predictions.

#### Direct Numerical Simulation

DNS resolves all turbulent scales, including the smallest viscous motions.

It provides very detailed results without turbulence modelling, but its computational cost is extremely high. It is generally limited to low or moderate Reynolds numbers.

#### Wall-resolved LES

LES resolves the large turbulent eddies and models the smaller ones.

In wall-resolved LES, the thin viscous region near the wave surface is also resolved. This requires:

- a very fine mesh near the surface;
- small time steps;
- a boundary-fitted or wave-following grid.

This approach captures phase-dependent effects accurately but remains very computationally expensive.

#### Wall-modelled LES

Wall-modelled LES does not resolve the complete near-surface region. Instead, its effect is represented through a wall model.

```math
\text{WMLES}
=
\text{resolved large eddies}
+
\text{modelled near-wall flow}
```

This greatly reduces the computational cost.

### Traditional roughness models

Traditional wall models represent the surface through an effective roughness length:

```math
z_0
```

The roughness length represents the combined effect of unresolved surface features on the airflow.

For ocean surfaces, models such as the Charnock relationship estimate this effective roughness from quantities such as:

- wind stress;
- wave age;
- wave steepness.

These methods are called **wave-phase-averaged models** because the individual position of the wave is not represented.

The entire wave surface is replaced by one average drag effect:

```math
\text{moving wave field}
\longrightarrow
\text{effective roughness}
\longrightarrow
\text{average surface stress}
```

These models have two main limitations:

- they depend on empirical parameters that may change between datasets;
- they cannot reproduce phase-dependent airflow over the different parts of a wave.

They cannot distinguish between the airflow over the trough, windward slope, crest and leeward slope.

### Phase-resolved and phase-averaged approaches

A **phase-resolved approach** represents how the airflow changes with the wave position:

```math
\text{windward slope}
\longrightarrow
\text{crest}
\longrightarrow
\text{leeward slope}
```

It provides detailed physical information but is computationally expensive.

A **phase-averaged approach** replaces these local variations with one average stress. It is inexpensive but loses information about the instantaneous wave position.

The central objective of the paper is therefore to combine:

```math
\text{phase-dependent physics}
+
\text{low computational cost}
```

### Moving Surface Drag model

The Moving Surface Drag model, or MOSD, represents the effect of waves using their local geometry and movement in physical space.

Unlike models based on a wave spectrum, MOSD does not calculate and add separate forces for each wavelength. Instead, it uses:

- local surface elevation;
- local surface slope;
- local wave velocity;
- airflow velocity relative to the moving surface.

The model assumes that the windward side of a wave experiences increased pressure. Each local part of the wave is approximated as a moving inclined plane.

```math
\text{local slope}
+
\text{relative wind–wave velocity}
\longrightarrow
\text{pressure force}
\longrightarrow
\text{form drag}
```

The pressure force on the leeward side is neglected based on the assumption of airflow separation or near-separation.

### Resolved and unresolved wave effects

MOSD separates the sea-surface influence into two parts:

```math
\text{total surface stress}
=
\text{resolved-wave form drag}
+
\text{unresolved roughness stress}
```

Large waves that are horizontally resolved by the computational grid produce a phase-dependent form-drag contribution.

Small ripples that cannot be resolved are represented through a traditional equilibrium wall model.

This allows the simulation to include both:

- the local effect of large moving waves;
- the average effect of small unresolved surface features.

### Main purpose of MOSD

MOSD is designed to reproduce wave-phase-dependent momentum transfer without requiring:

- wave-following grids;
- complete resolution of the viscous sublayer;
- two-fluid simulations;
- separate empirical drag coefficients for every wavelength.

The model can be used with a simple flat numerical boundary while the effect of the moving wave is introduced through the wall stress.

Its principal goal is:

```math
\boxed{
\text{accurate wind–wave momentum transfer}
+
\text{moderate computational cost}
}
```

The model is validated against numerical and experimental data and is also applied to the airflow and wake of a fixed-bottom offshore wind turbine.
