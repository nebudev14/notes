*MA 3475 Calculus of Variations HW 2*
\
Warren Yun

== 1)
Given the functional
$ J[y] = integral_a^b f(x) sqrt(1 + y'^2) d x $

we are asked to investigate the special cases $f(x) = sqrt(x)$ and $f(x) = x$

For $f(x) = x$, we have

$ F = x sqrt(1 + y'^2) d x $

Since $F$ does not depend on $y$, $F_y' = C$. 

$ (x y') / (sqrt(1+y'^2)) = C $
$ (x^2 y'^2) / (1 + y'^2) = C^2 $
$ x^2 y'^2 = C^2 (1 + y'^2) $
$ x^2 y'^2 - y'^2 C^2 = C^2 $
$ y'^2 (x^2 - C^2) = C^2 $
$ y' = C / sqrt(x^2 - C^2) $

Solving the differential equation,

$ y = integral C / (sqrt(x^2 - C^2)) d x $
$ y = C ln |x + sqrt(x^2 - C^2)| + C_1 $

Inspecting $f(x) = sqrt(x)$,

$ (sqrt(x) y') / sqrt(1+y'^2) = C $
$ x y'^2 = C^2+ C^2 y'^2 $
$ y'^2 (x - C^2) = C^2 $
$ y' = C / sqrt(x - C^2) $
$ y = integral C / sqrt(x - C^2) d x $
$ y = 2C - sqrt(x - C^2) + C_1 $ 

== 2) 

For a functioinal to be differentiable, it must satisfy the following constraints:

$ Delta J = J[y + h] - J[y] = phi [h] + r[h] $ 


== 3b)
Given the functional $ integral_a^b y'^2 / x^3 d x $ 
we find the extermals by plugging $F = (y'^2) / x^3 $ into the Euler Lagrange equation:


$ F_y - d / (d x) F_y' = 0 $
$ d / (d x) (2y') / x^3 = C $ 
