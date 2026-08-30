# Basic ABL / MOST / LES Concepts to Remember

## Atmospheric Boundary Layer — ABL / PBL

The **Atmospheric Boundary Layer (ABL)** or **Planetary Boundary Layer (PBL)** is the lowest part of the atmosphere directly influenced by the Earth's surface.

Main surface effects:

**friction**

**surface roughness**

**heating and cooling**

These affect wind, temperature and turbulence.

Very schematically:

**ground → surface effects → turbulence → ABL**

In a convective boundary layer, surface heating can generate turbulent structures extending through much of the boundary layer. 

---

# Atmospheric Surface Layer

The **surface layer** is the lowest part of the ABL.

It is the region where Monin–Obukhov Similarity Theory is mainly applied.

Main assumption:

**momentum and heat fluxes are approximately constant with height**

For this reason it is also called the:

**constant-flux layer**

MOST is not intended to describe the entire atmosphere or entire ABL. 

---

# Roughness Sublayer

The **roughness sublayer** is the region directly influenced by individual roughness elements such as:

trees
vegetation
buildings

Inside this region, standard MOST becomes less reliable.

For vegetation, it can extend approximately:

**2–3 times the canopy height**

Therefore MOST should normally be applied **above the roughness sublayer**. 

---

# Atmospheric Stability

Atmospheric stability describes how **buoyancy influences vertical motion and turbulence**.

There are three main cases.

## Unstable

Usually:

**ground warmer than air**

Then:

**warm air → lower density → rises**

Buoyancy increases vertical mixing and turbulence.

```math
\frac{z}{L}<0
```

---

## Neutral

Buoyancy has little effect.

Turbulence is mainly produced by:

**surface friction**

and:

**wind shear**

```math
\frac{z}{L}\approx0
```

---

## Stable

Usually:

**ground colder than air**

Vertical motion is suppressed.

Therefore:

**mixing decreases**

**turbulence decreases**

```math
\frac{z}{L}>0
```

---

# Wind Shear

**Wind shear** is the change of wind speed with height.

```math
\frac{\partial U}{\partial z}
```

Near the ground:

**surface friction → slower wind**

Higher up:

**wind speed increases**

Therefore:

**surface friction → wind-speed gradient → shear → turbulence**

Wind shear is one of the main mechanical sources of turbulence in the ABL.

---

# Buoyancy

Buoyancy results from density differences in a gravitational field.

For atmospheric flow:

**temperature ↑ → density ↓ → air rises**

For a convective ABL:

**surface heating → buoyancy → vertical motion → turbulence**

In a stable atmosphere, buoyancy instead opposes vertical displacement.

---

# Potential Temperature

Symbol:

```math
\theta
```

Potential temperature is the temperature an air parcel would have if moved to a reference pressure without exchanging heat.

Why it is useful:

atmospheric pressure decreases with height, so ordinary temperature changes partly because of expansion/compression.

Potential temperature removes much of this pressure effect.

Therefore it is useful for studying:

**thermal stratification**

**buoyancy**

**atmospheric stability**

---

# Surface Heat Flux

The **surface heat flux** represents heat transfer between the ground and the atmosphere.

Positive upward heat flux:

**surface heats atmosphere**

↓

**unstable / convective conditions**

Negative heat flux:

**surface cools atmosphere**

↓

**stable conditions**

The heat flux is therefore directly connected to atmospheric stability.

---

# Surface Momentum Flux / Surface Stress

The surface slows the air through friction.

This transfers momentum between the atmosphere and the ground.

The turbulent momentum flux is usually represented using the surface shear stress:

```math
\tau
```

Larger surface stress means stronger interaction between the surface and the atmosphere.

---

# Friction Velocity

Symbol:

```math
u_*
```

Definition:

```math
u_*=\sqrt{\frac{\tau}{\rho}}
```

where:

**τ** = surface shear stress

**ρ** = air density

Despite the name, friction velocity is **not simply the actual wind speed**.

It is a velocity scale representing the intensity of surface momentum transfer.

Remember:

**surface stress ↑ → friction velocity ↑**

---

# Aerodynamic Roughness Length

Symbol:

```math
z_0
```

The aerodynamic roughness length represents how strongly the surface affects the wind profile.

It is **not necessarily the physical height of the roughness elements**.

Rougher surface:

**larger z₀**

Smoother surface:

**smaller z₀**

It appears in the logarithmic wind profile.

---

# Logarithmic Wind Profile

For neutral conditions, the near-surface wind profile is approximately:

```math
U(z)=\frac{u_*}{\kappa}\ln\left(\frac{z}{z_0}\right)
```

where:

**U(z)** = mean wind at height z

**u*** = friction velocity

**κ** = von Kármán constant

**z₀** = aerodynamic roughness length

Main meaning:

**wind speed increases approximately logarithmically with height**

MOST extends this profile to stable and unstable conditions.

---

# von Kármán Constant

Symbol:

```math
\kappa
```

Modern commonly accepted value:

```math
\kappa\approx0.40
```

It appears in:

**logarithmic wind law**

**MOST equations**

**friction-velocity relationships**

Older experiments produced slightly different values, but Foken notes that approximately 0.40 is widely accepted. 

---

# Monin–Obukhov Similarity Theory — MOST

MOST is the main framework used to describe turbulence in the atmospheric surface layer.

Its basic idea:

different atmospheric conditions can be described using **dimensionless quantities**.

The central stability variable is:

```math
\frac{z}{L}
```

MOST connects:

**surface fluxes**

↓

**atmospheric stability**

↓

**wind and temperature gradients**

It is essentially a way to determine how stable or unstable conditions modify the neutral surface-layer behaviour. 

---

# Monin–Obukhov Length

Symbol:

```math
L
```

The Monin–Obukhov length compares:

**turbulence generated mechanically by shear**

with:

**thermal effects produced by buoyancy**

A typical form is:

```math
L=-\frac{u_*^3}{\kappa\left(\frac{g}{\theta_0}\right)\overline{w'\theta'}}
```

You do not need to memorize the complete formula immediately.

Remember the interpretation.

### L < 0

unstable

### L > 0

stable

### |L| very large

buoyancy weak

→ conditions close to neutral

The Obukhov length is therefore a **stability length scale**. 

---

# Stability Parameter z/L

The most important parameter to recognize is:

```math
\zeta=\frac{z}{L}
```

It combines:

**height**

and:

**atmospheric stability**

Remember:

```math
z/L<0
```

unstable

```math
z/L=0
```

neutral

```math
z/L>0
```

stable

The larger the magnitude of `z/L`, the farther the condition is from neutral.

---

# Similarity Functions φ

The `φ` functions describe how atmospheric stability changes the **gradients**.

Two important ones:

```math
\phi_m
```

= momentum / wind similarity function

```math
\phi_h
```

= heat / temperature similarity function

---

## φm

```math
\phi_m=\frac{\kappa z}{u_*}\frac{\partial U}{\partial z}
```

Meaning:

**stability → φm → wind-speed gradient**

---

## φh

Describes the potential-temperature gradient.

Meaning:

**stability → φh → temperature gradient**

So the easiest thing to remember is:

**m = momentum**

**h = heat**

---

# Universal Functions

MOST assumes:

```math
\phi_m=f\left(\frac{z}{L}\right)
```

and:

```math
\phi_h=f\left(\frac{z}{L}\right)
```

They are called **universal functions** because the idea is that the same dimensionless relationships can approximately describe many atmospheric surface-layer conditions.

The mathematical structure comes from similarity theory.

The numerical constants come mainly from experiments.

---

# Typical Unstable Functions

A commonly used form for momentum is:

```math
\phi_m=\left(1-\beta_m\frac{z}{L}\right)^{-1/4}
```

Typical values of `βm` are around:

```math
15-16
```

For heat:

```math
\phi_h\sim\left(1-\beta_h\frac{z}{L}\right)^{-1/2}
```

The exact constants vary between empirical formulations.

Main thing to remember:

**unstable → nonlinear power-law correction**

---

# Typical Stable Functions

Stable similarity functions are often approximated as linear:

```math
\phi_m=1+\gamma_m\frac{z}{L}
```

Typical empirical coefficient:

```math
\gamma_m\approx5
```

Main thing:

**stable → approximately linear correction**

---

# φ vs ψ

This distinction is VERY important.

## φ functions

Describe **gradients**.

For example:

```math
\phi_m\rightarrow\frac{\partial U}{\partial z}
```

---

## ψ functions

Describe **integrated profile corrections**.

They are obtained by integrating the φ-functions.

Therefore:

**φ → gradient correction**

↓

**integration**

↓

**ψ → profile correction**

---

# Integrated Stability Correction ψm

The non-neutral wind profile can be written schematically as:

```math
U(z)=\frac{u_*}{\kappa}
\left[
\ln\left(\frac{z}{z_0}\right)-\psi_m
\right]
```

So:

**logarithmic neutral profile**

*

**stability correction**

=

**stable/unstable profile**

For neutral conditions:

```math
\psi_m=0
```

and the ordinary logarithmic profile is recovered.

---

# ψh

```math
\psi_h
```

is the corresponding integrated correction for heat / temperature.

Therefore:

**φm → ψm → wind profile**

**φh → ψh → temperature profile**

---

# Momentum Diffusivity Km

Symbol:

```math
K_m
```

Represents the effective turbulent transport of momentum.

Larger `Km`:

**more efficient turbulent mixing of momentum**

---

# Heat Diffusivity Kh

Symbol:

```math
K_h
```

Represents the effective turbulent transport of heat.

Larger `Kh`:

**more efficient turbulent heat mixing**

---

# Turbulent Prandtl Number

The turbulent Prandtl number compares momentum and heat transport.

```math
Pr_t=\frac{K_m}{K_h}
```

If:

```math
Pr_t=1
```

momentum and heat are transported equally efficiently.

If:

```math
Pr_t<1
```

heat is transported more efficiently.

Its precise atmospheric value depends on conditions and empirical formulation; Foken notes remaining uncertainty in its determination. 

---

# Richardson Number

Symbol:

```math
Ri
```

The Richardson number compares:

**buoyancy**

with:

**wind shear**

Conceptually:

```math
Ri\sim\frac{\text{buoyancy}}{\text{shear}}
```

### Ri < 0

unstable

buoyancy produces turbulence

### Ri > 0

stable

buoyancy suppresses turbulence

`Ri` and `z/L` both describe stability, but they are not exactly the same quantity.

---

# Eddy

An **eddy** is a turbulent structure or rotating motion in the fluid.

Turbulence contains eddies of many sizes.

Large eddies:

**contain much of the turbulent energy**

Small eddies:

**receive energy from larger eddies and eventually dissipate it**

---

# Turbulent Energy Cascade

Energy moves through turbulence approximately as:

**large eddies**

↓

**medium eddies**

↓

**small eddies**

↓

**viscous dissipation**

This process is the **energy cascade**.

It is one of the main physical ideas behind LES.

---

# Large-Eddy Simulation — LES

LES separates turbulence into:

**resolved turbulent scales**

and:

**subgrid scales**

Main idea:

**large eddies → resolved directly**

**small eddies → modelled**

This works well for the ABL because large turbulent structures contain much of the energy and transport much of the momentum and heat. 

---

# Resolved Scales

Turbulent structures that are large enough to be represented by the computational mesh.

They are calculated directly.

Examples:

**large convective updrafts**

**large shear-generated eddies**

---

# Subgrid Scales — SGS

**SGS = Subgrid Scale**

Turbulent structures smaller than the computational grid.

They cannot be resolved directly.

Therefore:

**small eddies → SGS model**

The SGS model represents their effects on:

**momentum transport**

**heat transport**

**energy dissipation**

---

# LES Filter

LES conceptually separates:

```math
\text{total flow}
=
\text{resolved flow}
+
\text{subgrid flow}
```

Filtering removes scales that are too small for the grid.

The filtered equations then contain unknown SGS terms that require modelling.

---

# SGS Turbulent Kinetic Energy

Often represented by:

```math
e
```

It describes how much turbulent energy exists in the unresolved scales.

Energy chain:

**resolved turbulence**

↓

**SGS turbulence**

↓

**dissipation**

---

# Convective Boundary Layer

A **convective boundary layer** occurs when the surface strongly heats the atmosphere.

Process:

**surface heating**

↓

**positive buoyancy**

↓

**warm air rises**

↓

**large vertical eddies**

↓

**strong vertical mixing**

Large convective eddies can have sizes comparable to the total ABL depth.

---

# Boundary-Layer Height

Often written as:

```math
z_i
```

It represents the approximate top of the turbulent boundary layer.

Below `zi`:

surface-generated turbulence is important.

Above `zi`:

the atmosphere is less directly affected by surface turbulence.

---

# Coriolis Effect

The Coriolis effect appears because the Earth rotates.

It changes the direction of large-scale atmospheric motion.

Inside an ABL simulation:

**pressure gradient + Coriolis + surface friction + turbulence**

all contribute to the wind field.

---

# Geostrophic Wind

The **geostrophic wind** represents the large-scale wind associated with approximate balance between:

**pressure-gradient force**

and:

**Coriolis force**

```math
\text{pressure gradient}\approx\text{Coriolis}
```

Near the ground, friction modifies this balance.

---

# Periodic Boundary Conditions

Periodic boundaries mean:

**flow leaving one side of the domain → re-enters through the opposite side**

Useful in atmospheric simulations because turbulence can develop continuously without a conventional inlet and outlet.

Typical use:

**ABL precursor simulations**

---

# Precursor Simulation

A precursor simulation is used to generate a developed turbulent atmospheric flow before running the final simulation.

Basic idea:

**initial wind + temperature profiles**

↓

**surface forcing + pressure forcing + Coriolis**

↓

**periodic domain**

↓

**turbulence develops**

↓

**statistically developed ABL**

↓

**flow field used as inflow for another simulation**

---

# Homogeneous Surface

A horizontally homogeneous surface has approximately constant:

**roughness**

**thermal properties**

**terrain characteristics**

MOST works best under this assumption.

Strong changes in surface properties can invalidate the local equilibrium assumptions.

---

# Eddy Covariance

A method used to measure turbulent fluxes directly.

For heat:

```math
\overline{w'\theta'}
```

where:

**w'** = vertical-velocity fluctuation

**θ'** = temperature fluctuation

If warm air moves upward frequently, their covariance becomes positive.

Eddy covariance is one of the key experimental methods used to determine atmospheric turbulent fluxes.

---

# MOST Limitations

MOST is useful, but not exact.

According to Foken, it is mainly applicable:

**inside the atmospheric surface layer**

**above the roughness sublayer**

**over approximately homogeneous terrain**

**when fluxes are approximately constant with height**

and roughly within:

```math
\left|\frac{z}{L}\right|\leq1-2
```

Even under relatively good conditions, typical accuracy is only around:

```math
10\%-20\%
```



---

# The Main Chain to Remember

If you remember only one sequence, make it this:

**surface**

↓

**surface stress + heat flux**

↓

**friction velocity u* + Obukhov length L**

↓

**stability z/L**

↓

**similarity functions φm and φh**

↓

**integrated corrections ψm and ψh**

↓

**wind and temperature profiles**

↓

**surface boundary condition**

↓

**ABL turbulence**

And for LES:

**large turbulent eddies → resolved**

**small turbulent eddies → SGS model**

**energy → large scales → small scales → dissipation**


