# Dyer (1974) — A Review of Flux-Profile Relationships

## Aim of the paper

Dyer reviews the different **flux-profile relationships** used to describe the atmospheric surface layer.

A flux-profile relationship connects:

**vertical profiles of wind, temperature and humidity**

with:

**turbulent fluxes of momentum, heat and water vapour**

The main problem is to determine how these relationships change when the atmosphere is:

**unstable**

**neutral**

or:

**stable**

The paper compares different experimental formulations and identifies the relationships that Dyer considers most convincing.

The preferred functions are:

### Unstable conditions

```math
\phi_M=\left(1-16\frac{z}{L}\right)^{-1/4}
```

```math
\phi_H=\phi_W=\left(1-16\frac{z}{L}\right)^{-1/2}
```

### Stable conditions

```math
\phi_M=\phi_H=\phi_W=1+5\frac{z}{L}
```

These are the main equations to remember from the paper. 

---

# Why Flux-Profile Relationships Are Needed

The atmospheric surface layer exchanges several quantities with the ground.

The most important are:

**momentum**

**heat**

**water vapour**

These exchanges are described by turbulent fluxes.

The difficulty is that atmospheric models often know variables such as:

**wind speed**

**temperature**

**humidity**

at specific heights, but need to determine the corresponding surface fluxes.

Therefore:

**measured or simulated profile**

↓

**flux-profile relationship**

↓

**surface turbulent flux**

Dyer emphasizes that this is particularly important for numerical atmospheric models, where the computational grid is too coarse to directly resolve the complete near-surface turbulence. 

---

# Constant-Flux Layer

The paper focuses on the **constant-flux layer**.

This corresponds approximately to the atmospheric surface layer.

The main assumption is:

**turbulent fluxes vary only weakly with height**

Therefore, over this region:

**momentum flux ≈ constant**

**heat flux ≈ constant**

**water-vapour flux ≈ constant**

This allows the vertical gradients of wind, temperature and humidity to be related directly to the surface fluxes.

---

# Main Variables

**z** = height above the ground

**L** = Monin–Obukhov length

**u** = mean wind speed

**θ** = potential temperature

**q** = specific humidity

**u*** = friction velocity

**κ** = von Kármán constant

**H** = turbulent heat flux

**E** = water-vapour flux

**τ** = momentum flux / shear stress

**KH** = turbulent transfer coefficient for heat

**KW** = turbulent transfer coefficient for water vapour

**KM** = turbulent transfer coefficient for momentum

**φH** = similarity function for heat

**φW** = similarity function for water vapour

**φM** = similarity function for momentum

---

# Monin–Obukhov Length

The Monin–Obukhov length is a characteristic atmospheric length scale.

Dyer writes it in terms of friction velocity and heat flux:

```math
L=-\frac{\rho c_p u_*^3\theta}{\kappa g H}
```

where:

**ρ** = air density

**cp** = specific heat of air

**u*** = friction velocity

**θ** = potential temperature

**κ** = von Kármán constant

**g** = gravitational acceleration

**H** = turbulent heat flux

The sign of `L` indicates atmospheric stability.

### Unstable atmosphere

```math
L<0
```

### Neutral atmosphere

```math
|L|\rightarrow\infty
```

and therefore:

```math
\frac{z}{L}\rightarrow0
```

### Stable atmosphere

```math
L>0
```

---

# Stability Parameter z/L

The main dimensionless stability parameter is:

```math
\zeta=\frac{z}{L}
```

Therefore:

```math
\frac{z}{L}<0
```

→ unstable

```math
\frac{z}{L}=0
```

→ neutral

```math
\frac{z}{L}>0
```

→ stable

Dyer uses `z/L` instead of describing stability only with the Richardson number because it is naturally connected to surface turbulent fluxes. 

---

# Turbulent Fluxes

## Heat Flux

The vertical turbulent heat flux can be represented as:

```math
H=-\rho c_pK_H\frac{\partial\theta}{\partial z}
```

The temperature gradient is:

```math
\frac{\partial\theta}{\partial z}
```

and `KH` represents turbulent heat transport.

---

## Water-Vapour Flux

The water-vapour flux is:

```math
E=-\rho L_wK_W\frac{\partial q}{\partial z}
```

where:

**q** = specific humidity

**Lw** = latent heat associated with water

**KW** = turbulent transfer coefficient for water vapour

---

## Momentum Flux

The turbulent momentum flux is:

```math
\tau=\rho K_M\frac{\partial u}{\partial z}
```

where:

**KM** = turbulent transfer coefficient for momentum

Therefore the same basic structure applies to all three quantities:

**vertical gradient → turbulent transfer coefficient → turbulent flux**

---

# Similarity Functions

Monin–Obukhov theory rewrites the vertical gradients using dimensionless similarity functions.

For temperature:

```math
\frac{\partial\theta}{\partial z}
=
-\frac{H}{\rho c_pu_*\kappa z}
\phi_H\left(\frac{z}{L}\right)
```

For humidity:

```math
\frac{\partial q}{\partial z}
=
-\frac{E}{\rho L_wu_*\kappa z}
\phi_W\left(\frac{z}{L}\right)
```

For wind:

```math
\frac{\partial u}{\partial z}
=
\frac{u_*}{\kappa z}
\phi_M\left(\frac{z}{L}\right)
```

The main idea is:

```math
\boxed{
\text{atmospheric stability}
\rightarrow
\phi
\rightarrow
\text{vertical gradient}
}
```

Therefore, once the functions `φM`, `φH` and `φW` are known, the wind, temperature and humidity behaviour can be described.
