*number of steps is how much time has passed since the start of simulation, so more steps more advance state that we see*

*heat flux is the heating of the surface*

### Unstable — 10 steps

**Temperature:** Clear vertical temperature gradient; still very close to the initial profile.

**Velocity z:** Very small vertical motion, about `-0.016 to +0.016 m/s`.

**Why:** The simulation has just started, so convection has not had time to develop.

---

### Unstable — 100 steps

**Temperature:** Little change compared with the initial profile.

**Velocity z:** Upward and downward motions appear near the surface, about `±0.15 m/s`.

**Why:** Surface heating starts creating buoyancy, so warm air rises and surrounding air moves downward.

---

### Unstable — 1000 steps

**Temperature:** The overall temperature profile is still similar.

**Velocity z:** Much stronger vertical motion, about `-0.25 to +0.36 m/s`, extending farther upward.

**Why:** The unstable flow has had more time to develop, so convective mixing becomes stronger.

---

### Stronger surface heat flux — `ABL.surface_temp_flux = 0.008`

**Temperature:** Similar overall vertical gradient.

**Velocity z:** Strong vertical motion near the surface

**Why:** Stronger surface heating increases buoyancy and produces stronger rising and sinking air.
