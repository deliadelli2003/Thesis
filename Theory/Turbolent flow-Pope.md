$$
\frac{\partial U_j}{\partial t}
+
\frac{\partial(U_iU_j)}{\partial x_i}
=
\nu\nabla^2U_j
-\frac{1}{\rho}\frac{\partial p}{\partial x_j}
$$

Average every term:

$$
\frac{\partial\langle U_j\rangle}{\partial t}
+
\frac{\partial\langle U_iU_j\rangle}{\partial x_i}
=
\nu\nabla^2\langle U_j\rangle
-\frac{1}{\rho}\frac{\partial\langle p\rangle}{\partial x_j}
$$

Use the Reynolds decomposition:

$$
U_i=\langle U_i\rangle+u_i,
\qquad
U_j=\langle U_j\rangle+u_j
$$

$$
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
$$

Since

$$
\langle u_i\rangle=\langle u_j\rangle=0,
$$

then

$$
\langle U_iU_j\rangle
=
\langle U_i\rangle\langle U_j\rangle
+\langle u_i u_j\rangle.
$$

Substitute:

$$
\frac{\partial\langle U_j\rangle}{\partial t}
+
\frac{\partial\left(
\langle U_i\rangle\langle U_j\rangle
+\langle u_i u_j\rangle
\right)}{\partial x_i}
=
\nu\nabla^2\langle U_j\rangle
-\frac{1}{\rho}\frac{\partial\langle p\rangle}{\partial x_j}.
$$

Finally:

$$
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
$$
