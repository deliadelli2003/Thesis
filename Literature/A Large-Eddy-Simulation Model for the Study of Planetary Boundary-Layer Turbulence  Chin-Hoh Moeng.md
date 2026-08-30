# Moeng (1984) — A Large-Eddy-Simulation Model for the Study of Planetary Boundary-Layer Turbulence

## Aim of the paper

Moeng develops a **Large-Eddy Simulation (LES)** model to study turbulence in the **Planetary Boundary Layer (PBL)**.

The PBL is essentially the atmospheric boundary layer: the lowest part of the atmosphere directly influenced by the Earth's surface through friction, heating and cooling.

The main idea of LES is:

**large turbulent eddies → resolved directly**

**small turbulent eddies → modelled**

Large eddies are important because they contain a large part of the turbulent energy and are responsible for much of the vertical transport of momentum and heat.

The small eddies are more universal and mainly receive energy from the larger structures through the turbulent energy cascade before dissipating it.

Moeng combines:

**pseudospectral method in the horizontal directions**

*

**finite differences in the vertical direction**

The model is first tested numerically and is then applied to a convective atmospheric boundary layer. 

---

# Planetary Boundary Layer

The **Planetary Boundary Layer (PBL)** is the lowest part of the atmosphere directly affected by the surface.

Its behaviour depends on:

**surface friction**

**surface roughness**

**surface heating or cooling**

**wind shear**

**buoyancy**

**Coriolis force**

The term **ABL** and **PBL** are often used in very similar contexts.

For this paper, the important case is a **convective PBL**, where the surface is warmer than the air above.

Therefore:

**surface heating → warm air → buoyancy → rising air → turbulence**

---

# Large-Eddy Simulation

Turbulence contains structures of many different sizes called **eddies**.

The energy moves from large structures toward smaller structures:

**large eddies → smaller eddies → very small eddies → dissipation**

This is called the **turbulent energy cascade**.

Resolving every turbulent scale would require an extremely fine grid.

LES avoids this problem by separating turbulence into:

**resolved scales**

and:

**subgrid scales**

---

## Resolved scales

The resolved scales are the large turbulent structures that are large enough to be represented by the computational mesh.

They are calculated directly by the simulation.

These large structures strongly depend on the specific flow.

For an atmospheric boundary layer they depend on, for example:

**surface heating**

**wind shear**

**boundary-layer height**

**atmospheric stability**

---

## Subgrid scales — SGS

**SGS = Subgrid Scale**

These are turbulent motions that are smaller than the computational grid.

They cannot be calculated directly.

Therefore:

**eddy size > grid resolution → resolved**

**eddy size < grid resolution → SGS model**

The SGS model represents the effect of the unresolved turbulence on the resolved flow.

---

# LES Filtering

Mathematically, LES uses a filtering operation to separate the large and small scales.

Conceptually:

```math id="moeng-filter-simple"
\text{total flow}=\text{resolved flow}+\text{subgrid-scale flow}
```

The resolved part is calculated directly.

The unresolved part must be parameterized.

This creates the main LES modelling problem:

**filtered equations → unknown SGS terms → SGS model required**

---

# Main Equations Solved

The model solves filtered equations for:

**velocity**

**pressure**

**potential temperature**

and:

**SGS turbulent energy**

The resolved velocity has three components:

```math id="moeng-velocity"
\bar{u},\quad \bar{v},\quad \bar{w}
```

where:

**ū** = horizontal velocity in x direction

**v̄** = horizontal velocity in y direction

**w̄** = vertical velocity

---

# Incompressibility

Air is treated as incompressible for the purposes of the model.

The velocity field therefore satisfies:

```math id="moeng-continuity"
\frac{\partial\bar{u}}{\partial x}+\frac{\partial\bar{v}}{\partial y}+\frac{\partial\bar{w}}{\partial z}=0
```

This means that the flow does not locally create or destroy mass.

Pressure is calculated so that this condition remains satisfied.

---

# Potential Temperature

Moeng uses **potential temperature** rather than only ordinary temperature.

Potential temperature is the temperature that an air parcel would have if it were moved to a reference pressure without exchanging heat.

It is useful because atmospheric pressure changes with height.

Potential temperature makes it easier to distinguish real thermal stratification from temperature changes caused simply by pressure differences.

Symbol:

```math id="moeng-theta"
\theta
```

Potential temperature is important because it controls buoyancy and atmospheric stability.

---

# Buoyancy

Buoyancy is one of the main drivers of turbulence in the convective PBL considered by Moeng.

The basic mechanism is:

**surface heats air**

↓

**air becomes warmer and less dense**

↓

**air rises**

↓

**vertical motion develops**

↓

**large turbulent eddies form**

Therefore:

```math id="moeng-buoyancy-chain"
\text{surface heat flux}\rightarrow\text{buoyancy}\rightarrow\text{turbulence}
```

In the convective boundary layer, buoyancy is one of the main sources of turbulent kinetic energy.

---

# Coriolis Effect

The model also includes the **Coriolis force**.

The Coriolis effect appears because the Earth rotates.

It modifies the direction of large-scale atmospheric motion.

Therefore the horizontal wind is influenced by:

**pressure gradient**

*

**Coriolis force**

*

**surface friction**

This is important for realistic atmospheric boundary-layer simulations.

---

# Geostrophic Wind

Moeng uses a prescribed **geostrophic wind** to represent large-scale atmospheric forcing.

Geostrophic wind is the wind associated with an approximate balance between:

**pressure-gradient force**

and:

**Coriolis force**

Conceptually:

```math id="moeng-geostrophic"
\text{pressure gradient}\approx\text{Coriolis force}
```

Near the surface, friction disturbs this balance.

Therefore inside the PBL:

**pressure gradient + Coriolis + friction + turbulence**

all influence the wind.

---

# Subgrid-Scale Model

The SGS model represents turbulent motions that are too small to be directly resolved.

Moeng uses an SGS model based on **subgrid turbulent kinetic energy**.

This means that the model calculates how much turbulent energy exists below the grid scale.

Symbol:

```math id="moeng-sgs-energy"
e
```

The SGS energy can:

**increase because energy is transferred from the resolved turbulence**

and:

**decrease because small-scale turbulence dissipates energy**

Conceptually:

```math id="moeng-energy-cascade"
\text{resolved turbulence}\rightarrow\text{SGS turbulence}\rightarrow\text{dissipation}
```

This is how the LES model represents the final part of the turbulent energy cascade.

---

# SGS Transport of Momentum and Heat

Small unresolved eddies still transport momentum and heat.

The SGS model therefore calculates:

**SGS momentum flux**

and:

**SGS heat flux**

The basic idea is a down-gradient model.

For momentum:

**velocity gradient → turbulent momentum transport**

For heat:

**temperature gradient → turbulent heat transport**

The larger the unresolved turbulence, the larger the SGS transport can become. 

---

# Why the SGS Model Is Important Near the Ground

Very close to the surface, the size of the energetic turbulent eddies becomes smaller.

The computational mesh cannot resolve all of them.

Therefore:

**middle of PBL → resolved eddies dominate**

**near surface → SGS contribution becomes more important**

This is particularly important for:

**surface momentum flux**

and:

**surface heat flux**

---

# Numerical Method

Moeng uses different numerical methods horizontally and vertically.

## Horizontal directions

The horizontal directions are treated with a **pseudospectral method**.

A pseudospectral method represents the flow using Fourier modes.

Main reason:

the atmospheric boundary layer is assumed to be approximately homogeneous and periodic horizontally.

Main advantage:

**very accurate calculation of horizontal derivatives**

You do not need the full Fourier mathematics for the thesis unless your supervisor specifically asks for it.

---

## Vertical direction

The vertical direction is treated using **finite differences**.

This is useful because the atmospheric boundary layer changes strongly with height.

For example:

**surface effects are strong near the ground**

while:

**conditions are different near the top of the PBL**

Therefore the model uses:

**horizontal → spectral method**

**vertical → finite differences**

---

# Periodic Boundary Conditions

The horizontal boundaries are periodic.

This means:

**flow leaving one side → re-enters from the opposite side**

Periodic boundaries are used in both horizontal directions.

They allow turbulence to develop without using a conventional inlet and outlet.

This idea is very important for modern **ABL precursor simulations**.

Conceptually:

```math id="moeng-periodic"
\text{periodic domain}\rightarrow\text{turbulence develops continuously}
```

---

# Lower Boundary — Ground

The ground has a major influence on the PBL.

At the surface:

```math id="moeng-no-penetration"
\bar{w}=0
```

This means that the resolved air cannot move through the ground.

However, the ground still exchanges:

**momentum**

and:

**heat**

with the atmosphere.

These exchanges must therefore be represented through a surface model.

---

# Surface-Layer Similarity

Moeng uses **Monin–Obukhov Similarity Theory (MOST)** to describe the surface interaction.

The surface model connects quantities such as:

**friction velocity**

**surface stress**

**temperature**

**heat flux**

**roughness**

**atmospheric stability**

The momentum stability function for unstable conditions has the form:

```math id="moeng-most"
\Phi_m=\left(1-15\frac{z}{L}\right)^{-1/4}
```

This should look familiar from the Paulson paper.

Paulson uses a closely related form:

```math id="moeng-paulson-link"
\phi_m=\left(1-16\frac{z}{L}\right)^{-1/4}
```

The difference between 15 and 16 comes from different empirical formulations.

The important point is:

**MOST → connects atmospheric stability with surface momentum and heat flux**

Moeng uses these relationships as part of the LES surface boundary condition. 

---

# Upper Boundary

At the top of the computational domain, Moeng imposes conditions such as:

```math id="moeng-top"
\bar{w}=0
```

This prevents resolved vertical flow through the top boundary.

Moeng recognizes that this treatment has limitations because atmospheric gravity waves cannot leave the domain freely.

This is one example of how numerical boundary conditions can influence atmospheric simulations.

---

# Model Validation

Before simulating the atmospheric boundary layer, Moeng tests the numerical method using a **Taylor–Green vortex**.

The Taylor–Green vortex is a standard numerical test involving a known three-dimensional vortex field.

Purpose:

**check whether the numerical scheme correctly reproduces vortex evolution and energy transfer**

The test shows that the mixed pseudospectral/finite-difference numerical method provides sufficiently accurate results. 

You do not need the detailed Taylor–Green mathematics for your thesis unless you are discussing numerical validation.

---

# Convective PBL Simulation

After the numerical test, the model is applied to a real atmospheric case based on the **Wangara experiment**.

The simulation considers a convective boundary layer.

Domain:

```math id="moeng-domain"
5\text{ km}\times5\text{ km}\times2\text{ km}
```

Grid:

```math id="moeng-grid"
32\times32\times40
```

Time step:

```math id="moeng-dt"
\Delta t=3\text{ s}
```

Initial wind and temperature profiles are based on atmospheric observations.

Small random disturbances are added initially.

These disturbances trigger the development of turbulence.

Therefore:

**initial atmospheric profile**

↓

**small perturbations**

↓

**instability develops**

↓

**turbulent eddies form**

---

# Boundary-Layer Height

During the simulation, the average boundary-layer depth reaches approximately:

```math id="moeng-zi"
z_i\approx1150\text{ m}
```

where:

**zᵢ = boundary-layer height**

The largest convective eddies have dimensions of approximately:

```math id="moeng-eddy-size"
1\text{ km}
```

This is comparable with the depth of the boundary layer.

Therefore:

**largest eddy size ≈ PBL depth**

This is one reason why LES is useful: these large structures are important enough that they should be explicitly resolved. 

---

# Turbulent Structures

The simulation produces large coherent regions of upward and downward motion.

These structures are generated mainly by surface heating.

Conceptually:

**surface heating**

↓

**warm air rises**

↓

**cooler air descends**

↓

**large convective circulation**

↓

**turbulent mixing**

The vertical-velocity structures extend through a large part of the boundary layer.

---

# Resolved and SGS Turbulent Energy

One of the most important results of the paper is the comparison between:

**resolved turbulent energy**

and:

**SGS turbulent energy**

Over most of the PBL:

**resolved turbulent energy >> SGS turbulent energy**

This means that the large eddies contain most of the turbulent energy.

Therefore the main assumption of LES is supported:

```math id="moeng-energy-result"
\text{large eddies dominate the turbulent energy}
```

---

# Resolved and SGS Heat Flux

Moeng also compares heat transport by:

**resolved eddies**

and:

**SGS eddies**

Over most of the PBL:

**resolved heat flux > SGS heat flux**

Near the ground:

**SGS heat flux becomes more important**

Therefore:

**main PBL → large resolved eddies transport most heat**

**surface region → unresolved turbulence becomes more important**

This result is shown clearly in the vertical heat-flux profiles in the paper. 

---

# Turbulent-Energy Budget

The turbulent-energy budget explains where the turbulent energy comes from and where it goes.

For the convective boundary layer studied by Moeng, the main source is:

**buoyancy**

Therefore:

```math id="moeng-tke"
\text{surface heating}\rightarrow\text{buoyancy}\rightarrow\text{turbulent energy}
```

The energy is then transferred:

**large resolved eddies**

↓

**smaller unresolved eddies**

↓

**dissipation**

This is the turbulent energy cascade.

---

# Main Result of the Paper

Moeng shows that an LES can reproduce the main characteristics of a convective atmospheric boundary layer.

The most important findings are:

**large resolved eddies contain most of the turbulent energy**

**large resolved eddies transport most of the heat**

**small SGS eddies mainly represent the final part of the energy cascade**

**SGS effects become particularly important near the surface**

The simulation also reproduces important vertical profiles of turbulence when compared with previous simulations and atmospheric observations. 
