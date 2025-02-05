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

Squaring this equation,

$ (Delta J) ^ 2 = (J[y+h]^2 - J[y]^2) $

Let $a = J[y], b= J[y+h] - J[h]$,

$ a^2 - 2 a b + b^2 - a^2 $
$ -2 J[y] (J[y+h] - J[y]) +  (J[y+h] - J[y])^2 $
$ -2 J[y] (phi[h] + r[h]) + (phi[h] + r[h])^2 $

where $-2 J[y] phi[h]$ is the new linear component of the squared functional. Additionally, looking at the limit

$ lim_(||h|| -> 0) r[h] / (||h||) $

we see that $r[h] = o(||h||)$, and the remaining terms $-2J[y] r[h]$ and $(phi[h] r[h])^2$ go to zero just as fast/faster than $r[h]$ does, showing that the square of a differentiable functional is differentiable. 

== 3b)
Given the functional $ integral_a^b y'^2 / x^3 d x $ 
we find the extermals by plugging $F = (y'^2) / x^3 $ into the Euler Lagrange equation:


$ F_y - d / (d x) F_y' = 0 $
$ F_y = 0 $
$ d / (d x) (2y') / x^3 = 0 $
$ (2y') / x^3 = C $
$ integral y' d y = integral  C / 2 x^3 d x $
$ y = C_1 x^4 + C_2 $

== 3d)
Given the functional

$ integral_a^b (y^2 + y'^2 + 2 y e^x) d x $

we find the extermals by plugging this into the Euelr Lagrange equation
$ F_y - d / (d x) F_y' = 0 $
$ 2y'' - 2y - 2e^x = 0 $
$ y'' - y  = e^x $

Solving this ODE with the characteristic equation $r^2 -1 = 0$, and finding the particular solution with known methods, we get the full solution

$ y = 1/2 x e^x + C_1 e^x + C_2 e^(-x) $

== 4)
Given the functional 
$ integral_0^1 (1/2 y'^2 + y y' + y' + y) d x $

We first plug $F = 1/2 y'^2 + y y' + y' + y)$ into the Euler Lagrange equation.

$ F_y - d / (d x) F_y' = 0 $
$ (y' + 1) - (y'' + y') = 0 $
$ y'' - 1 = 0 $
$ y'' = 1 $
Integrating twice, we get the general solution

$ y = (x^2) / 2 + C_1 x + C_2 $

Since the endpoints are free, we can take advantage of the natural boundary conditions

$ F_y (0) = 0 #"  " F_y (1) = 0 $
$ y'(0) + y(0) + 1 = 0 => 0 + C_1 + C_2 + 1 = 0 $
$ y'(1) + y(1) + 1 = 0 => 1 + C_1 + (1 / 2 1^2 + C_1 + C_2) + 1 = 0 $

Using this information, we get

$ C_2 = -1 - C_1 $
$ C_1 = -3/2 $
$ C_2 = 1 / 2 $

making the final particular solution
$ y = x^2 / 2 - 3/2 x + 1 / 2 $


== 5)

To prove that one and only one extremal of each of the functionals

$ integral e^(-2y^2) (y'^2 - 1) d x #"   " integral (y^2 + y' tan^(-1)y' - ln sqrt(1 + y'^2)) d x $

passes through any two points of the plane with different abscissas, we have to use Bernstein's Theorem, which requires 
$ F_y (x, y, y') > k #"    " |F(x, y, y')| <= alpha y'^2 + beta $

and that $F, F_y, F_y'$ are continuous at every finite point.

Starting witht the first functional,
$ y'' = (G_y - (G_(y'x) + G_(y'y)y')) / (G_(y' y')) = F(x, y, y') $
$ G = e^(-2y^2) (y'^2 - 1) $
$ G_y = 2 y e^(-2y^2) (y'^2 - 1) #"  " G_(y' x) = 0 #"  " G_(y' y) y' = 4 y y'^2 e^(-2 y ^2) #"  " G_(y'y') = 2 $

$ y'' = 2 y y'^2 + 2 y  = F(x, y, y') $

Examining $F = 2 y y'^2 + 2 y, F_y = 2y'^2 + 2, F_y' = 4y' y $, we see that they are all continuous. Additionally, $|F| <= 2 |y| y'^2 + 2|y|$, and $F_y > k > 0 $ satisfying all the requirements of Bernstein's theorem.

Moving onto the second functional,

$ G = (y^2 + y' tan^(-1)y' - ln sqrt(1 + y'^2))  $ 
$ G_y = 2 y #"  " G_(y'x) = y'' / (1 + y'^2) #"  " G_(y'y) y' = 0 #"  " G_(y'y') = 1 / (1 + y'^2) $

$ y'' = (2y - y'' / (1+y'^2)) (1+y'^2) $
$ y'' = 2y (1 + y'^2) - y'' $
$ y'' = y + y y'^2 = F(x, y, y') $

Exmaining $F = y + y y'^2, F_y =  1 + y'^2, F_y' = y + 2y y'$, we see that they are all continuous. We can also see that $F_y > k > 0$, and that $|F| <= |y| + |y|y'^2$, satisfying Bernstein's theorem as well.

