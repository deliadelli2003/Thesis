# Paulson (1970) — Wind Speed and Temperature Profiles in the Unstable Atmospheric Surface Layer

## Aim of the paper

Paulson studies the vertical profiles of **mean wind speed** and **potential temperature** in the **unstable atmospheric surface layer**.

The starting point is **Monin–Obukhov Similarity Theory (MOST)**.

MOST gives relationships for the vertical gradients of wind speed and temperature. Paulson integrates these gradient relationships to obtain equations for the actual profiles:

$$
u(z)
$$

and

$$
\theta(z)
$$

The different mathematical representations are then compared with atmospheric measurements from **Kerang, Australia**.

The paper considers **unstable stratification**, therefore:

$$
L < 0
$$

and:

$$
\frac{z}{L} < 0
$$

where:

* $z$ = height above the surface
* $L$ = Monin–Obukhov length

The ratio $z/L$ represents atmospheric stability.

---

# Atmospheric Surface Layer

The **surface layer** is the lowest part of the atmospheric boundary layer.

Main assumption of MOST:

**turbulent momentum and heat fluxes are approximately constant with height**

The two main processes considered are:

**momentum transfer** → connected with surface stress and wind

**heat transfer** → connected with surface heating/cooling and potential temperature

Atmospheric stability modifies both processes.

---

# Main Variables

$u$ = mean wind speed

$\theta$ = potential temperature

$z$ = height above the surface

$z_0$ = aerodynamic roughness length

$u_*$ = friction velocity

$\theta_*$ = temperature scale

$\kappa$ = von Kármán constant, approximately:

$$
\kappa \approx 0.4
$$

$L$ = Monin–Obukhov length

$Ri$ = gradient Richardson number

$\phi_1$ = dimensionless wind-gradient function

$\phi_2$ = dimensionless temperature-gradient function

$\psi_1$ = integrated wind stability correction

$\psi_2$ = integrated temperature stability correction

In more modern notation:

$$
\phi_1 \approx \phi_m
$$

$$
\phi_2 \approx \phi_h
$$

$$
\psi_1 \approx \psi_m
$$

$$
\psi_2 \approx \psi_h
$$

---

# Friction Velocity

The friction velocity is defined from the surface shear stress:

$$
u_* =
\sqrt{
\frac{\tau}{\rho}
}
$$

where:

* $\tau$ = surface shear stress
* $\rho$ = air density

Despite its name, $u_*$ is not simply the wind velocity.

It is a velocity scale representing the strength of the momentum exchange between the surface and the atmosphere.

Therefore:

**surface stress increases → $u_*$ increases**

---

# Dimensionless Wind Gradient

Paulson defines:

$$
\phi_1
=
\frac{\kappa z}{u_*}
\frac{\partial u}{\partial z}
$$

The term:

$$
\frac{\partial u}{\partial z}
$$

is the vertical wind-speed gradient.

$\phi_1$ describes how atmospheric stability modifies this gradient.

Under neutral conditions:

$$
\phi_1 = 1
$$

Under non-neutral conditions:

$$
\phi_1 \neq 1
$$

Therefore:

**stability → $\phi_1$ → modification of wind gradient**

---

# Dimensionless Temperature Gradient

For potential temperature:

$$
\phi_2
=
\frac{z}{\theta_*}
\frac{\partial \theta}{\partial z}
$$

where:

$$
\frac{\partial \theta}{\partial z}
$$

is the vertical potential-temperature gradient.

Therefore:

**$\phi_1$ → momentum / wind**

**$\phi_2$ → heat / temperature**

Both functions depend on atmospheric stability.

---

# From Gradient Functions to Actual Profiles

The $\phi$-functions only describe **gradients**.

For example:

$$
\phi_1
\rightarrow
\frac{\partial u}{\partial z}
$$

but a surface-layer model often needs the actual wind speed:

$$
u(z)
$$

For this reason, Paulson integrates the $\phi$-functions.

This produces the stability correction functions:

$$
\psi_1
$$

for momentum and:

$$
\psi_2
$$

for heat.

Main relation:

$$
\boxed{
\phi
\rightarrow
\text{integration}
\rightarrow
\psi
}
$$

---

# Wind-Speed Profile

The integrated wind profile is:

$$
u(z)
=
\frac{u_*}{\kappa}
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_1
\right]
$$

The term:

$$
\ln\left(\frac{z}{z_0}\right)
$$

is the normal logarithmic wind-profile contribution.

The term:

$$
\psi_1
$$

corrects the logarithmic profile for atmospheric stability.

Therefore:

$$
\boxed{
\text{logarithmic profile}
-
\text{stability correction}
=
\text{non-neutral wind profile}
}
$$

---

# Potential-Temperature Profile

For temperature:

$$
\theta-\theta_0
=
\theta_*
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_2
\right]
$$

where $\theta_0$ is a reference/surface potential temperature.

Again:

$$
\text{logarithmic profile}
-
\text{stability correction}
$$

gives the non-neutral temperature profile.

---

# Definition of the Integrated Stability Corrections

Paulson defines:

$$
\psi_1
=
\int
\frac{1-\phi_1(\xi)}{\xi}
\,d\xi
$$

and:

$$
\psi_2
=
\int
\frac{1-\phi_2(\xi)}{\xi}
\,d\xi
$$

where $\xi$ is a dimensionless coordinate related to $z/L$.

The distinction is:

**$\phi$ → correction of the gradient**

**$\psi$ → correction of the complete profile**

This is one of the central ideas of the paper.

---

# Businger–Dyer Representation

The most important representation considered by Paulson is the **Businger–Dyer formulation**.

For unstable atmospheric conditions, the momentum-gradient function is:

$$
\phi_1
=
\left[
1-\gamma\frac{z}{L}
\right]^{-1/4}
$$

The heat-gradient function is:

$$
\phi_2
=
\left[
1-\gamma\frac{z}{L}
\right]^{-1/2}
$$

Paulson finds that approximately:

$$
\gamma = 16
$$

provides the best simultaneous representation of the observed wind and temperature profiles.

The equations therefore become:

$$
\phi_m
=
\left(
1-16\frac{z}{L}
\right)^{-1/4}
$$

and:

$$
\phi_h
=
\left(
1-16\frac{z}{L}
\right)^{-1/2}
$$

---

# Physical Meaning of the Businger–Dyer Functions

For an unstable atmosphere:

$$
L < 0
$$

therefore:

$$
\frac{z}{L}<0
$$

and consequently:

$$
1-16\frac{z}{L}>1
$$

The values of $\phi_m$ and $\phi_h$ therefore differ from their neutral value.

Physically:

**surface heating → buoyancy → atmospheric instability → change in vertical gradients**

The complete chain is:

$$
\boxed{
\text{stability}
\rightarrow
\frac{z}{L}
\rightarrow
\phi_m,\phi_h
\rightarrow
\text{wind and temperature gradients}
}
$$

---

# Integrated Businger–Dyer Functions

Paulson analytically integrates the Businger–Dyer gradient functions.

He defines:

$$
x
=
\left(
1-16\frac{z}{L}
\right)^{1/4}
$$

---

## Momentum Correction

The integrated momentum correction is:

$$
\psi_m
=
2\ln\left(\frac{1+x}{2}\right)
+
\ln\left(\frac{1+x^2}{2}\right)
-
2\tan^{-1}(x)
+
\frac{\pi}{2}
$$

The corrected wind profile therefore becomes:

$$
u(z)
=
\frac{u_*}{\kappa}
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_m
\right]
$$

So:

$$
\frac{z}{L}
\rightarrow
x
\rightarrow
\psi_m
\rightarrow
u(z)
$$

---

## Heat Correction

For heat, the integrated correction is:

$$
\psi_h
=
2\ln\left(
\frac{1+x^2}{2}
\right)
$$

The potential-temperature profile becomes:

$$
\theta-\theta_0
=
\theta_*
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_h
\right]
$$

Therefore:

$$
\frac{z}{L}
\rightarrow
x
\rightarrow
\psi_h
\rightarrow
\theta(z)
$$

---

# Neutral Limit

The formulation must recover the ordinary logarithmic law when the atmosphere approaches neutral conditions.

Neutral limit:

$$
\frac{z}{L}\rightarrow0
$$

Then:

$$
x\rightarrow1
$$

and:

$$
\psi_m\rightarrow0
$$

$$
\psi_h\rightarrow0
$$

The wind profile reduces to:

$$
u(z)
=
\frac{u_*}{\kappa}
\ln\left(\frac{z}{z_0}\right)
$$

Therefore the Paulson/Businger–Dyer formulation can be understood as:

$$
\boxed{
\text{neutral logarithmic law}
+
\text{correction for atmospheric stability}
}
$$

---

# KEYPS Representation

Paulson also considers the **KEYPS representation**.

Its objective is to provide a transition between:

**neutral conditions**

and:

**strongly unstable / free-convection conditions**

One of the main relationships is:

$$
\phi_1^4
-
\gamma
\left(
\frac{z}{L'}
\right)
\phi_1^3
=
1
$$

where:

$$
L'=\alpha L
$$

The parameter $\alpha$ is related to the turbulent transport coefficients:

$$
\alpha
=
\frac{K_h}{K_m}
$$

where:

$K_h$ = turbulent transfer coefficient for heat

$K_m$ = turbulent transfer coefficient for momentum

---

# Turbulent Prandtl Number and α

If:

$$
\alpha=1
$$

heat and momentum are assumed to have similar turbulent transfer behaviour.

This leads to:

$$
\phi_2=\phi_1
$$

and:

$$
\psi_2=\psi_1
$$

Paulson finds that this assumption causes difficulties when reproducing the observed temperature profiles.

The wind profile can still be represented reasonably well, but temperature is less accurate.

This suggests:

$$
\boxed{
\alpha
\text{ should not necessarily be constant with stability}
}
$$

---

# Log-Linear Representation

Paulson also examines a simpler approximation valid close to neutral conditions.

For small $|z/L|$:

$$
\phi_1
\approx
1
+
\frac{\gamma}{4}
\frac{z}{L'}
$$

The corresponding integrated correction is approximately:

$$
\psi_1
\approx
-
\frac{\gamma}{4}
\frac{z}{L'}
$$

The approximation is based on small deviations from neutral conditions.

Therefore:

**small $|z/L|$ → log-linear approximation can work**

**large $|z/L|$ → strong instability → approximation becomes inaccurate**

Paulson finds that the log-linear representation performs poorly for strongly unstable cases.

---

# Gradient Richardson Number

The gradient Richardson number compares **buoyancy effects** with **wind-shear effects**.

Paulson uses:

$$
Ri
=
\frac{
\frac{g}{T}
\frac{\partial\theta}{\partial z}
}{
\left(
\frac{\partial u}{\partial z}
\right)^2
}
$$

The numerator represents thermal stratification and buoyancy.

The denominator represents wind shear.

Therefore:

$$
Ri
\sim
\frac{\text{buoyancy}}
{\text{shear}}
$$

For unstable conditions:

$$
Ri<0
$$

Negative $Ri$ means that buoyancy promotes vertical motion and turbulence.

Paulson uses measured wind and temperature gradients to estimate $Ri$ and characterize atmospheric stability.

---

# Experimental Data

The models are tested using **34 observations** from:

**Kerang, Australia**

Atmospheric conditions:

**unstable stratification**

Measurement heights:

approximately:

$$
0.5\ \text{m}
\rightarrow
16\ \text{m}
$$

Measured quantities:

**mean wind-speed profiles**

and:

**temperature profiles**

The objective is to determine which mathematical representation gives the best agreement with the measurements.

---

# Model-Comparison Procedure

For each experimental case:

**measured wind and temperature profiles**

↓

calculate gradients

↓

calculate $Ri$

↓

determine atmospheric stability

↓

calculate $\phi$ functions

↓

integrate to obtain $\psi$ functions

↓

calculate predicted:

$$
u(z)
$$

and:

$$
\theta(z)
$$

↓

compare predictions with measurements

↓

calculate fitting error / variance

Lower variance means a better representation.

---

# Results: Wind Speed

For wind-speed profiles:

**Businger–Dyer and KEYPS both give relatively good results**

The KEYPS representation gives its best wind-profile fit for a value of $\gamma$ around:

$$
\gamma \approx 11
$$

The Businger–Dyer model gives a good representation with:

$$
\gamma \approx 16
$$

The difference becomes more important when temperature is also considered.

---

# Results: Temperature

The **Businger–Dyer representation performs better for temperature**.

KEYPS can reproduce wind profiles reasonably well, but the assumption of constant $\alpha$ results in poorer temperature-profile predictions.

Paulson therefore suggests that the behaviour of $\alpha$ with atmospheric stability needs further investigation.

---

# Results: Log-Linear Model

The log-linear representation gives poor agreement with the observations under strongly unstable conditions.

Therefore:

$$
\boxed{
\text{log-linear model}
\rightarrow
\text{mainly suitable for near-neutral conditions}
}
$$

---

# Main Result

The main conclusion of the paper is that the **Businger–Dyer representation gives the best simultaneous fit** to both wind-speed and temperature profiles.

The preferred constant is approximately:

$$
\boxed{\gamma=16}
$$

giving:

$$
\boxed{
\phi_m
=
\left(
1-16\frac{z}{L}
\right)^{-1/4}
}
$$

and:

$$
\boxed{
\phi_h
=
\left(
1-16\frac{z}{L}
\right)^{-1/2}
}
$$

Paulson's important contribution is the analytical integration of these gradient functions to obtain the profile corrections:

$$
\boxed{\psi_m}
$$

and:

$$
\boxed{\psi_h}
$$

which can then be used directly in wind-speed and potential-temperature profiles. Paulson's conclusions explicitly favor the Businger–Dyer representation for the simultaneous wind and temperature fit. 

---

# Relevance for Atmospheric LES and Surface Models

In an atmospheric LES, the computational mesh normally cannot resolve every turbulent process between the physical ground and the center of the first computational cell.

A surface model therefore needs a relationship connecting:

$$
z
$$

$$
z_0
$$

$$
u_*
$$

$$
L
$$

and:

$$
u(z)
$$

For thermal simulations it also needs:

$$
\theta(z)
$$

The Paulson formulation provides the integrated stability corrections needed to connect these variables.

Main chain:

$$
\boxed{
\text{MOST}
\rightarrow
\phi_m,\phi_h
\rightarrow
\text{Paulson integration}
\rightarrow
\psi_m,\psi_h
\rightarrow
u(z),\theta(z)
}
$$

---

# Key Equations to Remember

## Momentum gradient

$$
\phi_m
=
\frac{\kappa z}{u_*}
\frac{\partial u}{\partial z}
$$

---

## Heat gradient

$$
\phi_h
=
\frac{z}{\theta_*}
\frac{\partial\theta}{\partial z}
$$

---

## Businger–Dyer momentum function

$$
\phi_m
=
\left(
1-16\frac{z}{L}
\right)^{-1/4}
$$

---

## Businger–Dyer heat function

$$
\phi_h
=
\left(
1-16\frac{z}{L}
\right)^{-1/2}
$$

---

## Auxiliary variable

$$
x
=
\left(
1-16\frac{z}{L}
\right)^{1/4}
$$

---

## Integrated momentum correction

$$
\psi_m
=
2\ln\left(\frac{1+x}{2}\right)
+
\ln\left(\frac{1+x^2}{2}\right)
-
2\tan^{-1}(x)
+
\frac{\pi}{2}
$$

---

## Integrated heat correction

$$
\psi_h
=
2\ln\left(
\frac{1+x^2}{2}
\right)
$$

---

## Corrected wind profile

$$
u(z)
=
\frac{u_*}{\kappa}
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_m
\right]
$$

---

## Corrected temperature profile

$$
\theta-\theta_0
=
\theta_*
\left[
\ln\left(\frac{z}{z_0}\right)
-
\psi_h
\right]
$$

---

# Paper in One Scheme

**Atmospheric stability**

↓

$$
\frac{z}{L}
$$

↓

**dimensionless gradient functions**

$$
\phi_m,\phi_h
$$

↓

**integration**

$$
\phi_m \rightarrow \psi_m
$$

$$
\phi_h \rightarrow \psi_h
$$

↓

**stability-corrected profiles**

$$
u(z)
$$

$$
\theta(z)
$$

↓

**comparison with Kerang measurements**

↓

**Businger–Dyer gives the best simultaneous representation**

↓

preferred value:

$$
\boxed{\gamma\approx16}
$$
