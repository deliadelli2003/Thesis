## 4.1 Reynolds equations

In turbulent flow, the instantaneous velocity changes continuously with position and time. Reynolds decomposition separates it into a mean velocity and a turbulent fluctuation:

```math
U(x,t)=\langle U(x,t)\rangle+u(x,t)
```

where:

- $\langle U\rangle$ is the mean velocity;
- $u$ is the turbulent fluctuation;
- $\langle u\rangle=0$ by definition.

Equivalently:

```math
u=U-\langle U\rangle
```

This decomposition allows us to study the average behaviour of the flow while still considering the effects of turbulence.

For an incompressible flow, conservation of mass is expressed by:

```math
\nabla\cdot U=0
```

Substituting the Reynolds decomposition:

```math
\nabla\cdot(\langle U\rangle+u)=0
```

Taking the average gives:

```math
\nabla\cdot\langle U\rangle=0
```

Subtracting this result from the decomposed equation gives:

```math
\nabla\cdot u=0
```

Therefore, both the mean flow and the turbulent fluctuations are divergence-free:

```math
\nabla\cdot\langle U\rangle=0,
\qquad
\nabla\cdot u=0
```

In index notation:

```math
\frac{\partial\langle U_i\rangle}{\partial x_i}=0,
\qquad
\frac{\partial u_i}{\partial x_i}=0
```

The condition

```math
\frac{\partial\langle U_i\rangle}{\partial x_i}=0
```

will later allow the mean convective term to be simplified.

The Reynolds decomposition can now be applied to the Navier–Stokes momentum equation. The important step is the averaging of the nonlinear product $U_iU_j$. Unlike the linear terms, its average is not simply the product of the mean velocities:

```math
\langle U_iU_j\rangle
\neq
\langle U_i\rangle\langle U_j\rangle
```

The following demonstration shows that averaging this product generates an additional term involving the turbulent fluctuations. This is the origin of the Reynolds stresses in the mean momentum equation.





```math
\frac{\partial U_j}{\partial t}
+
\frac{\partial(U_iU_j)}{\partial x_i}
=
\nu\nabla^2U_j
-\frac{1}{\rho}\frac{\partial p}{\partial x_j}
```

Average every term:

```math
\frac{\partial\langle U_j\rangle}{\partial t}
+
\frac{\partial\langle U_iU_j\rangle}{\partial x_i}
=
\nu\nabla^2\langle U_j\rangle
-\frac{1}{\rho}\frac{\partial\langle p\rangle}{\partial x_j}
```

Use the Reynolds decomposition:

```math
U_i=\langle U_i\rangle+u_i,
\qquad
U_j=\langle U_j\rangle+u_j
```

```math
\begin{aligned}
\langle U_iU_j\rangle
&=
\left\langle
(\langle U_i\rangle+u_i)
(\langle U_j\rangle+u_j)
\right\rangle \\
&=
\langle U_i\rangle\langle U_j\rangle
+\langle U_i\rangle\langle u_j\rangle
+\langle U_j\rangle\langle u_i\rangle
+\langle u_i u_j\rangle
\end{aligned}
```

Since

```math
\langle u_i\rangle=\langle u_j\rangle=0,
```

then

```math
\langle U_iU_j\rangle
=
\langle U_i\rangle\langle U_j\rangle
+\langle u_i u_j\rangle.
```

Substitute:

```math
\frac{\partial\langle U_j\rangle}{\partial t}
+
\frac{\partial\left(
\langle U_i\rangle\langle U_j\rangle
+\langle u_i u_j\rangle
\right)}{\partial x_i}
=
\nu\nabla^2\langle U_j\rangle
-\frac{1}{\rho}\frac{\partial\langle p\rangle}{\partial x_j}.
```

Finally:

```math
\boxed{
\frac{\partial\langle U_j\rangle}{\partial t}
+
\frac{\partial(\langle U_i\rangle\langle U_j\rangle)}
{\partial x_i}
=
\nu\nabla^2\langle U_j\rangle
-\frac{1}{\rho}\frac{\partial\langle p\rangle}{\partial x_j}
-\frac{\partial\langle u_i u_j\rangle}{\partial x_i}
}
```


The additional quantity

```math
\langle u_i u_j\rangle
```

is called the **Reynolds-stress tensor**. It represents the transport of momentum caused by turbulent velocity fluctuations.

Its effect on the mean flow appears through the term:

```math
-\frac{\partial\langle u_i u_j\rangle}{\partial x_i}
```

Therefore, the Reynolds equation has the same general structure as the Navier–Stokes equation, but contains an additional term describing the effect of turbulence on the mean flow.
