Yes — below is the **paste-ready `.md` version**, with normal Markdown text and GitHub-safe `math` blocks. It follows the Paulson (1970) paper you uploaded. 

# Paulson (1970) — Wind Speed and Temperature Profiles in the Unstable Atmospheric Surface Layer

## Aim of the paper

Paulson studies the vertical profiles of **mean wind speed** and **potential temperature** in the **unstable atmospheric surface layer**.

The starting point is **Monin–Obukhov Similarity Theory (MOST)**. MOST gives relationships for the vertical gradients of wind speed and temperature. Paulson integrates these gradient relationships to obtain expressions for the actual profiles of wind speed and potential temperature.

```math
u(z)
```

```math
\theta(z)
```

The different mathematical representations are then compared with atmospheric measurements from **Kerang, Australia**.

The paper considers unstable atmospheric conditions:

```math
L<0
```

and therefore:

```math
\frac{z}{L}<0
```

where:

**z** = height above the surface

**L** = Monin–Obukhov length

The ratio **z/L** is the main stability parameter used in the paper.

---

# Atmospheric Surface Layer

The **surface layer** is the lowest part of the Atmospheric Boundary Layer.

In this region, the turbulent fluxes of momentum and heat are approximately constant with height.

The two main processes considered are:

**momentum transfer** → connected with surface stress and wind speed

**heat transfer** → connected with surface heating/cooling and potential temperature

Atmospheric stability modifies both processes.

---

# Main Variables

**u** = mean wind speed

**θ** = potential temperature

**z** = height above the ground

**z₀** = aerodynamic roughness length

**u*** = friction velocity

**θ*** = temperature scale

**κ** = von Kármán constant

```math
\kappa \approx 0.4
```

**L** = Monin–Obukhov length

**Ri** = gradient Richardson number

**φ₁** = dimensionless wind-gradient function

**φ₂** = dimensionless temperature-gradient function

**ψ₁** = integrated wind stability correction

**ψ₂** = integrated temperature stability correction

In more modern notation:

```math
\phi_1 \approx \phi_m
```

```math
\phi_2 \approx \phi_h
```

```math
\psi_1 \approx \psi_m
```

```math
\psi_2 \approx \psi_h
```

---

# Friction Velocity

The friction velocity is related to the surface shear stress:

```math
u_*=\sqrt{\frac{\tau}{\rho}}
```

where:

**τ** = surface shear stress

**ρ** = air density

The friction velocity is not simply the local wind velocity. It is a velocity scale representing the strength of momentum transfer between the surface and the atmosphere.

Higher surface stress → larger friction velocity.

---

# Dimensionless Wind Gradient

Paulson defines the dimensionless wind-gradient function as:

```math
\phi_1=\frac{\kappa z}{u_*}\frac{\partial u}{\partial z}
```

The term:

```math
\frac{\partial u}{\partial z}
```

is the vertical gradient of wind speed.

The function **φ₁** describes how atmospheric stability modifies this gradient.

For neutral conditions:

```math
\phi_1=1
```

For non-neutral conditions:

```math
\phi_1\neq1
```

Therefore:

**atmospheric stability → φ₁ → modification of the wind-speed gradient**

---

# Dimensionless Temperature Gradient

For potential temperature:

```math
\phi_2=\frac{z}{\theta_*}\frac{\partial\theta}{\partial z}
```

The term:

```math
\frac{\partial\theta}{\partial z}
```

is the vertical gradient of potential temperature.

Therefore:

**φ₁ → momentum / wind**

**φ₂ → heat / temperature**

Both functions depend on atmospheric stability.

---

# From Gradient Functions to Actual Profiles

The φ-functions describe **gradients**, not the actual value of wind speed or temperature at a certain height.

For example:

```math
\phi_1 \rightarrow \frac{\partial u}{\partial z}
```

but atmospheric models need:

```math
u(z)
```

For this reason, Paulson integrates the φ-functions.

The integration produces:

```math
\psi_1
```

for momentum and:

```math
\psi_2
```

for heat.

Main relation:

**φ = gradient correction**

↓

**integration**

↓

**ψ = profile correction**

This distinction is one of the main ideas of the paper.

---

# Wind-Speed Profile

The integrated wind profile can be written as:

```math
u(z)=\frac{u_*}{\kappa}\left[\ln\left(\frac{z}{z_0}\right)-\psi_1\right]
```

The logarithmic term:

```math
\ln\left(\frac{z}{z_0}\right)
```

represents the neutral logarithmic wind profile.

The term:

```math
\psi_1
```

corrects this profile for atmospheric stability.

Therefore:

**neutral logarithmic profile + stability correction → non-neutral wind profile**

---

# Potential-Temperature Profile

The corresponding potential-temperature profile is:

```math
\theta-\theta_0=\theta_*\left[\ln\left(\frac{z}{z_0}\right)-\psi_2\right]
```

where:

**θ₀** = reference or surface potential temperature

**θ*** = temperature scale

**ψ₂** = heat-stability correction

Again:

**neutral profile + stability correction → non-neutral temperature profile**

---

# Integrated Stability Corrections

The ψ-functions are obtained by integrating the corresponding φ-functions.

For momentum:

```math
\psi_1=\int\frac{1-\phi_1(\xi)}{\xi}\,d\xi
```

For heat:

```math
\psi_2=\int\frac{1-\phi_2(\xi)}{\xi}\,d\xi
```

The variable **ξ** represents a dimensionless stability coordinate related to **z/L**.

Therefore:

**φm, φh → gradients**

**ψm, ψh → integrated profile corrections**

---

# Businger–Dyer Representation

One of the main formulations examined by Paulson is the **Businger–Dyer representation**.

For unstable atmospheric conditions, the momentum function is:

```math
\phi_1=\left(1-\gamma\frac{z}{L}\right)^{-1/4}
```

The temperature function is:

```math
\phi_2=\left(1-\gamma\frac{z}{L}\right)^{-1/2}
```

Paulson finds that approximately:

```math
\gamma=16
```

provides the best simultaneous representation of the measured wind and temperature profiles.

The equations therefore become:

```math
\phi_m=\left(1-16\frac{z}{L}\right)^{-1/4}
```

and:

```math
\phi_h=\left(1-16\frac{z}{L}\right)^{-1/2}
```

---

# Physical Meaning of the Businger–Dyer Functions

For unstable atmospheric conditions:

```math
L<0
```

Therefore:

```math
\frac{z}{L}<0
```

and:

```math
1-16\frac{z}{L}>1
```

The values of **φm** and **φh** differ from the neutral value.

Physically:

**surface heating → buoyancy → unstable atmosphere → modification of wind and temperature gradients**

The complete relation is:

**stability → z/L → φm and φh → vertical wind and temperature gradients**

---

# Integrated Businger–Dyer Functions

Paulson analytically integrates the Businger–Dyer gradient functions.

He introduces:

```math
x=\left(1-16\frac{z}{L}\right)^{1/4}
```

This auxiliary variable simplifies the integrated expressions.

---

## Momentum Correction

The integrated momentum correction is:

```math
\psi_m=2\ln\left(\frac{1+x}{2}\right)+\ln\left(\frac{1+x^2}{2}\right)-2\tan^{-1}(x)+\frac{\pi}{2}
```

The wind-speed profile becomes:

```math
u(z)=\frac{u_*}{\kappa}\left[\ln\left(\frac{z}{z_0}\right)-\psi_m\right]
```

The calculation sequence is:

**z/L → x → ψm → u(z)**

---

## Heat Correction

The integrated heat correction is:

```math
\psi_h=2\ln\left(\frac{1+x^2}{2}\right)
```

The potential-temperature profile becomes:

```math
\theta-\theta_0=\theta_*\left[\ln\left(\frac{z}{z_0}\right)-\psi_h\right]
```

The calculation sequence is:

**z/L → x → ψh → θ(z)**

---

# Neutral Limit

The equations must recover the standard logarithmic law when atmospheric conditions approach neutral.

Neutral conditions correspond to:

```math
\frac{z}{L}\rightarrow0
```

Then:

```math
x\rightarrow1
```

and:

```math
\psi_m\rightarrow0
```

```math
\psi_h\rightarrow0
```

The wind profile therefore becomes:

```math
u(z)=\frac{u_*}{\kappa}\ln\left(\frac{z}{z_0}\right)
```

This is the normal logarithmic wind law.

Therefore, the Businger–Dyer/Paulson formulation can be understood as:

**neutral logarithmic profile + correction for atmospheric stability**

---

# KEYPS Representation

Paulson also studies the **KEYPS representation**.

KEYPS attempts to describe the transition between neutral conditions and strongly unstable or free-convection conditions.

One of its main relationships is:

```math
\phi_1^4-\gamma\left(\frac{z}{L'}\right)\phi_1^3=1
```

where:

```math
L'=\alpha L
```

The parameter **α** is related to the turbulent transport of heat and momentum.

```math
\alpha=\frac{K_h}{K_m}
```

where:

**Kh** = turbulent transfer coefficient for heat

**Km** = turbulent transfer coefficient for momentum

---

# Role of α

If:

```math
\alpha=1
```

heat and momentum are assumed to have similar turbulent transport behaviour.

This gives approximately:

```math
\phi_2=\phi_1
```

and therefore:

```math
\psi_2=\psi_1
```

Paulson finds that this assumption is one of the weaknesses of the KEYPS representation when temperature profiles are considered.

KEYPS can describe the wind profile reasonably well, but the temperature profile is represented less accurately if **α** is assumed constant.

---

# Log-Linear Representation

Paulson also considers a simpler **log-linear approximation**.

Close to neutral conditions:

```math
\phi_1\approx1+\frac{\gamma}{4}\frac{z}{L'}
```

The corresponding integrated correction is approximately:

```math
\psi_1\approx-\frac{\gamma}{4}\frac{z}{L'}
```

This approximation assumes that the departure from neutral conditions is small.

Therefore:

**small |z/L| → log-linear approximation can work**

**large |z/L| → strong instability → approximation becomes inaccurate**

Paulson finds that the log-linear representation performs poorly under strongly unstable conditions.

---

# Gradient Richardson Number

The gradient Richardson number compares **buoyancy effects** with **wind-shear effects**.

```math
Ri=\frac{\frac{g}{T}\frac{\partial\theta}{\partial z}}{\left(\frac{\partial u}{\partial z}\right)^2}
```

The numerator represents thermal stratification and buoyancy.

The denominator represents wind shear.

Therefore:

**Ri ≈ buoyancy / shear**

For unstable conditions:

```math
Ri<0
```

A negative Richardson number indicates that buoyancy promotes vertical motion and turbulence.

Paulson uses measured wind and temperature gradients to estimate the atmospheric stability of the experimental cases.

---

# Experimental Data

The different mathematical representations are tested using **34 atmospheric observations** from **Kerang, Australia**.

The measurements correspond to unstable stratification.

The approximate measurement range is:

```math
0.5\text{ m} \rightarrow 16\text{ m}
```

The measured quantities are:

**mean wind-speed profiles**

and:

**temperature profiles**

The objective is to determine which mathematical representation reproduces both quantities most accurately.

---

# Comparison Procedure

For each atmospheric observation:

**measured wind and temperature profiles**

↓

**calculate vertical gradients**

↓

**calculate Richardson number**

↓

**determine atmospheric stability**

↓

**calculate φ-functions**

↓

**integrate to obtain ψ-functions**

↓

**calculate predicted wind and temperature profiles**

↓

**compare predictions with measurements**

The different formulations are evaluated using the variance between the measured and predicted profiles.

Lower variance means better agreement with the observations.

---

# Results for Wind Speed

For wind-speed profiles, both the **Businger–Dyer** and **KEYPS** representations produce relatively good agreement with the measurements.

For the KEYPS model, the best wind-profile fit occurs for a value of γ around:

```math
\gamma\approx11
```

For the Businger–Dyer model, a value around:

```math
\gamma\approx16
```

gives a good representation.

The difference between the models becomes more important when the temperature profile is also considered.

---

# Results for Temperature

The **Businger–Dyer representation performs better for temperature**.

The KEYPS model can reproduce the wind profile reasonably well, but the assumption of a constant **α** leads to poorer temperature predictions.

This suggests that the relative turbulent transport of heat and momentum should not necessarily be treated as constant for all unstable atmospheric conditions.

---

# Results for the Log-Linear Representation

The log-linear approximation does not reproduce strongly unstable conditions well.

Therefore:

**near-neutral conditions → log-linear formulation can be acceptable**

**strongly unstable conditions → Businger–Dyer gives better results**

---

# Main Conclusion

The main conclusion of the paper is that the **Businger–Dyer representation provides the best simultaneous fit to wind-speed and potential-temperature profiles** for the unstable atmospheric observations considered.

The preferred constant is approximately:

```math
\gamma=16
```

giving:

```math
\phi_m=\left(1-16\frac{z}{L}\right)^{-1/4}
```

and:

```math
\phi_h=\left(1-16\frac{z}{L}\right)^{-1/2}
```

Paulson's important contribution is the analytical integration of these gradient functions to obtain:

```math
\psi_m
```

and:

```math
\psi_h
```

These integrated functions can then be inserted directly into wind-speed and potential-temperature profile equations.

---

# Relevance for Atmospheric LES

In an atmospheric LES, the computational grid normally does not resolve all turbulent processes between the physical ground and the first computational cell.

A surface model therefore needs relationships connecting:

**height z**

**roughness length z₀**

**friction velocity u***

**Monin–Obukhov length L**

**wind speed u(z)**

and, for thermal simulations:

**potential temperature θ(z)**

Paulson provides the integrated stability corrections required for this type of surface-layer model.

The main sequence is:

**MOST**

↓

**dimensionless gradients φm and φh**

↓

**Paulson integration**

↓

**integrated corrections ψm and ψh**

↓

**wind and temperature profiles**

↓

**surface-layer boundary condition for atmospheric simulations**

---

# Key Equations

## Friction velocity

```math
u_*=\sqrt{\frac{\tau}{\rho}}
```

## Dimensionless momentum gradient

```math
\phi_m=\frac{\kappa z}{u_*}\frac{\partial u}{\partial z}
```

## Businger–Dyer momentum function

```math
\phi_m=\left(1-16\frac{z}{L}\right)^{-1/4}
```

## Businger–Dyer heat function

```math
\phi_h=\left(1-16\frac{z}{L}\right)^{-1/2}
```

## Auxiliary variable

```math
x=\left(1-16\frac{z}{L}\right)^{1/4}
```

## Integrated momentum correction

```math
\psi_m=2\ln\left(\frac{1+x}{2}\right)+\ln\left(\frac{1+x^2}{2}\right)-2\tan^{-1}(x)+\frac{\pi}{2}
```

## Integrated heat correction

```math
\psi_h=2\ln\left(\frac{1+x^2}{2}\right)
```

## Corrected wind profile

```math
u(z)=\frac{u_*}{\kappa}\left[\ln\left(\frac{z}{z_0}\right)-\psi_m\right]
```

## Corrected potential-temperature profile

```math
\theta-\theta_0=\theta_*\left[\ln\left(\frac{z}{z_0}\right)-\psi_h\right]
```

## Gradient Richardson number

```math
Ri=\frac{\frac{g}{T}\frac{\partial\theta}{\partial z}}{\left(\frac{\partial u}{\partial z}\right)^2}
```

---

# Paper in One Scheme

**Atmospheric stability**

↓

**z/L**

↓

**dimensionless gradient functions**

**φm and φh**

↓

**integration**

↓

**ψm and ψh**

↓

**corrected wind and temperature profiles**

**u(z) and θ(z)**

↓

**comparison with measurements**

↓

**Businger–Dyer gives the best simultaneous representation**

↓

preferred constant:

```math
\gamma\approx16
```

---

# Reference

Paulson, C. A. (1970). *The Mathematical Representation of Wind Speed and Temperature Profiles in the Unstable Atmospheric Surface Layer*. Journal of Applied Meteorology, 9, 857–861.
