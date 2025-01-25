= Method of Finite Differences
\ 

Calculus of Variations is the study of functionals. That is, given a function $I[y] = F(x, y, y')$, we must find the optimal solution to the functional by minimizing/maximizing it.

A great example of this is the Brachistochrone problem, proposed by John Bernoulli. Given a point $A$ and $B$ in 2D space, find the path of least travel time for a ball. Assume gravity is the only external force of the system.

We aim to define a functional $I[y]$ where $y$ is the curve from A to B, and the resulting output is the total time it takes to travel. In its simplest form, we have 

$ T = integral_0^T d t $ 

We want to rewrite this general function in terms of $x$, so we have to utilize some silly parameterization techniques. We also know that 

$ r(t) = mat(x(t); y(t)) #" " r'(t) = mat(x'(t); y'(t)) $

Redefining this in terms of x, we get 

$ r(x) = mat(x; y(x)) #" " r'(x) = mat(1; y'(x)) $


Recall the formula for an arc: $s = integral_0^x ||r'(phi)|| d phi$

$ (d s)/(d x) = ||r'(x)|| = sqrt(1 + y'^2) $

$ S = integral_0^S(T) 1/v d s  = integral_0^L sqrt(1+y'^2) / v d x = integral_0^L sqrt(1 + y'^2) / v(x, y, y') d x $ 

Since we know that gravity is the only external force, we can use the conservation of energy to make this simplification:

$ m g y = 1/2 m v^2 $
$ v = sqrt(2 g y) $

$ T = integral_0^L sqrt(1 + y'^2) / sqrt(2 g y) d x $

his method has a "localization property" 
