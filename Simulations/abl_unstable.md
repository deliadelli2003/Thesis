<img width="1206" height="1067" alt="temperature" src="https://github.com/user-attachments/assets/2b3cbda2-65b9-42f8-8db0-e36cd5f92a75" />

## Unstable AB

- `ABL.surface_temp_flux`  
  → controls the heat flux from the surface  
  → in the unstable case, the surface gives heat to the air

- `BoussinesqBuoyancy`  
  → activates buoyancy effects  
  → warmer air can rise and create vertical motion

- `velocity_z` in ParaView  
  → shows vertical air movement  
  → positive values = upward motion  
  → negative values = downward motion

- `z/L < 0`  
  → indicates unstable conditions  
  → caused by surface heating and buoyancy

### Chain

surface heating  
→ warm air near the ground  
→ buoyancy  
→ air rises  
→ stronger vertical mixing  
→ unstable ABL  
→ `z/L < 0`
