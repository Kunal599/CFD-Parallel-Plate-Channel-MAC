# CFD-Parallel-Plate-Channel-MAC
**Steady-State Velocity and Temperature Field Calculation in a Parallel Plate Channel Using MAC Algorithm**
Projects completed as part of the Advanced Computational Fluid Dynamics (ME634) course at IIT Kanpur. 



This project involves the simulation of steady-state velocity and temperature fields in a parallel plate channel. The channel has no-slip conditions on the top and bottom walls and free-slip conditions on the side walls. The velocity field is calculated using the MAC (Marker-and-Cell) algorithm, and the temperature field is computed using the Successive Over-Relaxation (SOR) scheme. The focus is on the velocity and temperature profiles at specific locations within the channel.

Objectives
Calculate the steady-state velocity field in a parallel plate channel using the MAC algorithm.
Compute the temperature field using the SOR scheme, considering specific boundary conditions.
Visualize the velocity vectors on the vertical mid-plane (x−y plane at z = 0.5B).
Plot axial velocity profiles on the x−y plane at specified locations (x = 0.3L, 0.5L, 0.7L, and 0.9L).
Plot temperature profiles on the x−y plane at specified locations (x = 0.3L, 0.5L, 0.7L, and 0.9L).

Project Components
Fortran Code: The core scripts for calculating the velocity and temperature fields using the MAC and SOR algorithms. and postprocessing script is in python 
Grid Setup: The channel is divided into a 3D grid with 22 cells in the y-direction, 97 cells in the z-direction, and 90 cells in the x-direction.
Boundary Conditions: No-slip on the top and bottom walls, free-slip on the side walls, uniform inflow, and smooth outflow.
