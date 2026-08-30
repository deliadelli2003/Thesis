# Foken (2006) — 50 Years of the Monin–Obukhov Similarity Theory

## Aim of the paper

Foken reviews the development, physical meaning, experimental basis, and limitations of **Monin–Obukhov Similarity Theory (MOST)**.

The main topics are:

**Obukhov length**

**dimensionless stability parameter z/L**

**wind and temperature similarity functions**

**turbulent Prandtl number**

**accuracy and limitations of MOST**

---

# Atmospheric Surface Layer

The **atmospheric surface layer** is the lowest part of the Atmospheric Boundary Layer.

In this region, turbulent fluxes are approximately constant with height.

The most important fluxes are:

**momentum flux**

**sensible heat flux**

and, when moisture is considered:

**water-vapour flux**

The surface layer is also called the:

**constant-flux layer**

because of this approximation.

The theory is mainly intended for this region, not for the complete atmospheric boundary layer.

---

# Main Idea of MOST

MOST tries to describe surface-layer turbulence using a small number of characteristic variables.

The central idea is:

**different atmospheric conditions can be represented using dimensionless variables**

The most important dimensionless stability parameter is:

```math
\zeta=\frac{z}{L}
```

where:

**z** = height above the ground

**L** = Monin–Obukhov length

The value of `z/L` determines the stability regime.

---

# Atmospheric Stability

## Unstable Conditions

```math
\frac{z}{L}<0
```

Usually associated with surface heating.

Warm air rises and buoyancy enhances turbulence.

Therefore:

**buoyancy promotes vertical mixing**

---

## Neutral Conditions

```math
\frac{z}{L}\approx0
```

Buoyancy has little influence.

Turbulence is mainly produced by:

**surface friction**

and:

**wind shear**

---

## Stable Conditions

```math
\frac{z}{L}>0
```

Usually associated with surface cooling.

Buoyancy suppresses vertical motion.

Therefore:

**vertical mixing decreases**

---

# Obukhov Length

One of the central concepts of the paper is the **Obukhov length**.

A modern form can be written as:

```math
L=-\frac{u_*^3}{\kappa\left(\frac{g}{\theta_0}\right)\overline{w'\theta'}}
```

where:

**u*** = friction velocity

**κ** = von Kármán constant

**g** = gravitational acceleration

**θ₀** = reference potential temperature

**w'θ'** = turbulent kinematic heat flux

The exact notation changes between historical formulations, but the physical meaning remains the same.

The Obukhov length compares the importance of:

**mechanical turbulence from shear**

with:

**thermal turbulence from buoyancy**

Foken explains that this length scale originates from Obukhov's earlier work and later became the basis of Monin–Obukhov Similarity Theory. 

---

# Physical Meaning of L

The magnitude of `L` indicates how important buoyancy is compared with shear.

### Very large |L|

```math
|L|\rightarrow\infty
```

Buoyancy becomes weak.

Therefore:

```math
\frac{z}{L}\rightarrow0
```

and conditions approach neutral.

---

### Small |L|

Buoyancy becomes more important.

Therefore:

**small |L| → stronger thermal influence**

---

### Sign of L

```math
L<0
```

→ unstable

```math
L>0
```

→ stable

---

# Friction Velocity

The friction velocity represents the strength of the turbulent momentum exchange between the ground and the atmosphere.

It is defined from the surface shear stress:

```math
u_*=\sqrt{\frac{\tau}{\rho}}
```

where:

**τ** = surface shear stress

**ρ** = air density

The friction velocity is not simply the actual wind velocity.

It is a velocity scale used to describe surface-layer turbulence.

---

# Constant Turbulent Fluxes

In the surface layer, MOST assumes approximately constant vertical turbulent fluxes.

For momentum:

```math
\tau\approx\text{constant with height}
```

For heat:

```math
\overline{w'\theta'}\approx\text{constant with height}
```

This assumption allows the surface-layer profiles to be scaled using quantities such as:

**u***

**temperature scale**

**L**

and:

**z**

---

# Dimensionless Wind Gradient

MOST defines a dimensionless wind-gradient function.

```math
\phi_m\left(\frac{z}{L}\right)=\frac{\kappa z}{u_*}\frac{\partial U}{\partial z}
```

where:

**U** = mean horizontal wind speed

The function `φm` describes how atmospheric stability changes the vertical wind gradient.

Therefore:

```math
\frac{z}{L}\rightarrow\phi_m\rightarrow\frac{\partial U}{\partial z}
```

---

# Dimensionless Temperature Gradient

The corresponding heat or temperature function is:

```math
\phi_h\left(\frac{z}{L}\right)=\frac{\kappa z}{\theta_*}\frac{\partial\theta}{\partial z}
```

depending on the exact convention used.

Here:

**θ** = potential temperature

**θ*** = temperature scale

The important meaning is:

**φm → momentum**

**φh → heat**

Both depend mainly on:

```math
\frac{z}{L}
```

Foken describes these as the central universal functions of MOST. 

---

# Universal Functions

The functions are called **universal functions** because MOST assumes that, under suitable surface-layer conditions, the same dimensionless functions can describe different atmospheric situations.

The general idea is:

```math
\phi_m=f\left(\frac{z}{L}\right)
```

and:

```math
\phi_h=f\left(\frac{z}{L}\right)
```

The exact functions cannot be obtained completely from theory.

They must be determined using atmospheric measurements.

This is why different empirical versions exist.

---

# Unstable Universal Functions

Foken presents the widely used unstable momentum function:

```math
\phi_m=\left(1-15\frac{z}{L}\right)^{-1/4}
```

and the corresponding heat function:

```math
\phi_h=0.74\left(1-9\frac{z}{L}\right)^{-1/2}
```

for unstable conditions:

```math
\frac{z}{L}<0
```

The main physical effect is:

**instability increases turbulent mixing**

Therefore the vertical gradients required to transport momentum and heat become smaller.

---

# Stable Universal Functions

For stable conditions, Foken presents approximately linear forms:

```math
\phi_m=1+4.7\frac{z}{L}
```

and:

```math
\phi_h=0.74+4.7\frac{z}{L}
```

with:

```math
\frac{z}{L}>0
```

Under stable conditions:

**buoyancy suppresses turbulence**

Therefore:

**turbulent mixing decreases**

and:

**wind and temperature gradients become stronger**

---

# Why Momentum and Heat Use Different Functions

Momentum and heat are not necessarily transported by turbulence with exactly the same efficiency.

Therefore:

```math
\phi_m\neq\phi_h
```

in general.

This difference is described using the **turbulent Prandtl number**.

---

# Turbulent Prandtl Number

The turbulent Prandtl number compares turbulent momentum transport with turbulent heat transport.

```math
Pr_t=\frac{K_m}{K_h}
```

where:

**Km** = turbulent diffusivity for momentum

**Kh** = turbulent diffusivity for heat

If:

```math
Pr_t=1
```

momentum and heat are transported with the same turbulent efficiency.

If:

```math
Pr_t\neq1
```

the two transport processes behave differently.

Foken shows that the exact value has remained a source of uncertainty and that modern estimates still have an accuracy of only several percent. 

---

# von Kármán Constant

The von Kármán constant appears in the logarithmic wind law and in MOST.

Symbol:

```math
\kappa
```

Historically, different atmospheric experiments produced different values.

The currently accepted value discussed in the paper is approximately:

```math
\boxed{\kappa\approx0.40}
```

Foken notes that older experiments sometimes produced values as low as approximately:

```math
0.35
```

but the value around `0.40` became more widely accepted.

---

# Logarithmic Wind Profile

Under neutral conditions:

```math
\frac{z}{L}\rightarrow0
```

and:

```math
\phi_m\rightarrow1
```

This leads to the classical logarithmic wind profile:

```math
U(z)=\frac{u_*}{\kappa}\ln\left(\frac{z}{z_0}\right)
```

where:

**z₀** = aerodynamic roughness length

Therefore:

**MOST extends the neutral logarithmic law to stable and unstable conditions**

by introducing stability corrections.

---

# Updated Universal Functions

Foken explains that later measurements led to revised forms of the universal functions.

A more modern unstable momentum formulation presented in the paper is:

```math
\phi_m=\left(1-19.3\frac{z}{L}\right)^{-1/4}
```

For stable momentum:

```math
\phi_m=1+6\frac{z}{L}
```

For unstable heat:

```math
\phi_h=0.95\left(1-11.6\frac{z}{L}\right)^{-1/2}
```

For stable heat:

```math
\phi_h=0.95+7.8\frac{z}{L}
```

These revised functions use approximately:

```math
\kappa=0.40
```

and a reciprocal turbulent Prandtl number close to:

```math
Pr_t^{-1}\approx1.05
```

Foken presents these as an example of how the universal functions evolved as experimental methods improved. 

---

# Why Different Universal Functions Exist

MOST gives the general structure:

```math
\phi=f\left(\frac{z}{L}\right)
```

but does not uniquely determine the numerical coefficients.

Therefore the constants must come from measurements.

Different experiments produced slightly different values because of:

**instrument accuracy**

**surface conditions**

**tower-flow distortion**

**measurement corrections**

**different stability ranges**

This explains why the coefficients used in surface-layer models are not always identical.

---

# Eddy Covariance

The paper gives important attention to **eddy covariance**.

Eddy covariance is a method used to directly measure turbulent fluxes.

For example, the heat flux is related to the covariance between:

**vertical velocity fluctuation**

and:

**temperature fluctuation**

Conceptually:

```math
\overline{w'\theta'}
```

If warm air tends to move upward:

```math
w'>0
```

and:

```math
\theta'>0
```

then their product is positive and the turbulent heat flux is upward.

Eddy covariance therefore provides a direct measurement of turbulent exchange rather than estimating it only from mean profiles.

---

# Roughness Sublayer

One of the most important limitations of MOST is the **roughness sublayer**.

The roughness sublayer is the region immediately above large surface elements such as:

**trees**

**buildings**

**tall vegetation**

Inside this region, individual roughness elements directly affect the flow.

Therefore the assumptions of horizontally homogeneous surface-layer turbulence become weaker.

Foken states that the roughness sublayer can extend roughly:

**2–3 times the canopy height**

above vegetation.

For very tall vegetation or urban areas, this region can become tens of metres thick. 

---

# Why the Roughness Sublayer Is a Problem

MOST assumes that the turbulence depends mainly on:

**height**

**surface fluxes**

and:

**stability**

But close to large roughness elements, turbulence is also directly controlled by:

**individual obstacles**

**wakes**

**coherent structures**

Therefore:

```math
\text{inside roughness sublayer}
\rightarrow
\text{standard MOST may not be valid}
```

---

# Homogeneous Surface

MOST also works best over a **horizontally homogeneous surface**.

A homogeneous surface means that properties such as:

**roughness**

**temperature**

**vegetation**

do not change strongly in the horizontal direction.

If the surface changes rapidly:

**grass → forest**

or:

**land → water**

or:

**open terrain → city**

then the atmosphere may not be in local equilibrium with the surface.

The standard similarity relationships can then become inaccurate.

---

# Valid Stability Range

Foken emphasizes that MOST should not be applied without limits.

The paper gives an approximate useful range:

```math
\left|\frac{z}{L}\right|\leq1-2
```

Outside this range, especially under very strong stability or instability, the standard universal functions become less reliable.

---

# Accuracy of MOST

Even under relatively ideal conditions, MOST is not exact.

Foken estimates typical accuracy of approximately:

```math
10\%-20\%
```

For moderate stability:

```math
\left|\frac{z}{L}\right|\leq0.5
```

the uncertainty in the heat function can be around:

```math
|\delta\phi_h|\leq10\%
```

while the momentum function can have uncertainty around:

```math
|\delta\phi_m|\leq20\%
```

The stable region is particularly uncertain.

The paper notes that different measurements disagree more strongly under stable conditions. 

---

# Main Conditions for Using MOST

According to Foken, MOST is mainly applicable when:

**the flow is inside the atmospheric surface layer**

**the measurement point is above the roughness sublayer**

**the surface is approximately horizontally homogeneous**

**turbulent fluxes are approximately constant with height**

**the stability is not extremely strong**

A useful stability range is approximately:

```math
\left|\frac{z}{L}\right|\leq1-2
```

Even under good conditions, the expected accuracy is only approximately:

```math
10\%-20\%
```

These limitations are one of the most important conclusions of the paper. 

---

# Main Results of the Paper

The main conclusions are:

**MOST remains a fundamental framework for the atmospheric surface layer**

**z/L is the central dimensionless stability parameter**

**wind and temperature gradients are described using universal functions**

**the numerical constants in those functions come from experiments**

**momentum and heat do not necessarily have identical turbulent transport**

**the von Kármán constant is now generally taken as about 0.40**

**universal functions are better established for unstable than for strongly stable conditions**

**MOST has important limitations near rough surfaces and over heterogeneous terrain**

**the expected accuracy is typically around 10–20%**

---

# Terms to Remember

## Monin–Obukhov Similarity Theory — MOST

Framework used to describe turbulent wind and temperature behaviour in the atmospheric surface layer.

---

## Surface Layer

Lowest part of the atmospheric boundary layer where turbulent fluxes are approximately constant with height.

---

## Obukhov Length

Symbol:

```math
L
```

Characteristic length comparing mechanical turbulence from shear with thermal turbulence from buoyancy.

---

## Stability Parameter

```math
\frac{z}{L}
```

Describes atmospheric stability.

**negative → unstable**

**zero → neutral**

**positive → stable**

---

## Friction Velocity

Symbol:

```math
u_*
```

Velocity scale representing turbulent momentum transfer at the ground.

---

## φm

Dimensionless momentum similarity function.

Describes how stability modifies the vertical wind gradient.

---

## φh

Dimensionless heat similarity function.

Describes how stability modifies the vertical temperature gradient.

---

## Turbulent Prandtl Number

```math
Pr_t=\frac{K_m}{K_h}
```

Compares turbulent momentum and heat transport.

---

## Universal Function

Empirical function that relates a dimensionless atmospheric quantity to:

```math
\frac{z}{L}
```

---

## Eddy Covariance

Measurement method used to determine turbulent fluxes directly from correlated fluctuations of velocity and temperature or other scalars.

---

## Roughness Sublayer

Region directly influenced by individual roughness elements such as vegetation or buildings.

Standard MOST may not be valid inside this region.

---

## Homogeneous Surface

Surface whose roughness and thermal properties do not change strongly in the horizontal direction.

MOST works best under this condition.

---

# Key Equations

## Stability parameter

```math
\zeta=\frac{z}{L}
```

## Friction velocity

```math
u_*=\sqrt{\frac{\tau}{\rho}}
```

## Momentum similarity function

```math
\phi_m=\frac{\kappa z}{u_*}\frac{\partial U}{\partial z}
```

## Heat similarity function

```math
\phi_h=\frac{\kappa z}{\theta_*}\frac{\partial\theta}{\partial z}
```

## Classical unstable momentum function

```math
\phi_m=\left(1-15\frac{z}{L}\right)^{-1/4}
```

## Classical unstable heat function

```math
\phi_h=0.74\left(1-9\frac{z}{L}\right)^{-1/2}
```

## Classical stable momentum function

```math
\phi_m=1+4.7\frac{z}{L}
```

## Classical stable heat function

```math
\phi_h=0.74+4.7\frac{z}{L}
```

## Modern value of von Kármán constant

```math
\kappa\approx0.40
```

## Approximate validity range

```math
\left|\frac{z}{L}\right|\leq1-2
```

## Approximate accuracy

```math
10\%-20\%
```

---

# Paper in One Scheme

**surface momentum and heat exchange**

↓

**define characteristic scales**

```math
u_*,\quad L
```

↓

**calculate atmospheric stability**

```math
\frac{z}{L}
```

↓

**use universal functions**

```math
\phi_m,\quad\phi_h
```

↓

**determine wind and temperature gradients**

↓

**describe the atmospheric surface layer**

↓

**check assumptions**

**constant flux**

**homogeneous surface**

**above roughness sublayer**

**moderate stability**

↓

```math
\boxed{\text{MOST gives a useful but approximate description of surface-layer turbulence}}
```

