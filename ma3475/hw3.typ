= Warren Yun 3

= 1a)
To prove that a Frechet derivative is unique, we'll assume that two different variations $J$ are equal, for two different functionals $phi_1$ and $phi_2$.

$ Delta J = phi_1[h] + r_1[h] #"   " Delta J = phi_2[h] + r_2[h] $

It's worth noting that if $phi[h] / (||h||) -> 0$ as $||h|| -> 0$ (and if $phi[h]$ is a linear functional), then $phi[h] = 0$ for all values of $h$. 
With this in mind, we can examine the assumption that

$ phi_1[h] - phi_2[h] = r_1[h] - r_2[h] $

and that $r_1[h]$ and $r_2[h]$ will go to zero as $||h|| -> 0$. Likewise from the note above, both $phi_1[h]$ and $phi_2[h]$ will go to zero (and vanish "identically") as $||h|| -> 0$.

$ phi_1[h] - phi_2[h] = r_1[h] - r_2[h] $

$ phi_1[h] - phi_2[h] = 0 $

$ phi_1[h] = phi_2[h] $
 

= 1b)
The Gateaux derivative is similar to the Frechet derivative, but resembling that of a directional derivative.

$ Delta J = L_G[v] + r_G[v] #" such that " lim_(t -> 0) r_G[t v] / (t) = 0 $ 

= 1c)

= 1d)
Let the Gateaux variation be
$ delta_G J[h] := [d / (d t) J[y_0 + t h]]_(t=0) $



= 2)
We are given $ E[y] = e^(J[y]) $

Remember that $e^u = sum_(n=0)^(infinity) u^n / (n!) $

$ Delta E[h] =  E[y+h] - E[y] $
$ e^(J[y+h]) - e^(J[y]) = e^(J[y]) (e^(Delta J[h]) - 1) $
$ e^(J[y]) (e^(Delta J[h]) - 1) = ((sum_(n=0)^(infinity) (Delta J[h])^n) / (n!) - 1) e^(J[y]) $
$ Delta E[h] = (Delta J[h] + sum_(n=2)^(infinity) (Delta J[h])^n / (n!)) e^(J[y]) $
$ Delta E[h] = (delta J[h] + r[h] + sum_(n=2)^(infinity) (Delta J[h])^n / (n!)) e^(J[y]) $

Note that the term $r[h] + sum_(n=2)^(infinity) (Delta J[h])^n / (n!)$ will go to zero as $||h|| -> 0$, resulting in the variation 

$ delta E[h] = delta(e^(J[y])) = e^(J[y]) delta J[h] $


= 3a)

Given equations of a sphere $ r(theta, phi) = mat(R cos(theta) sin(phi) ; R sin(theta) sin(phi); R cos(phi)) $

and given the functional

$ S[theta, phi] = integral_(t_A)^(t_B) ||r'(theta, phi)|| d t $

we are asked to derive the Euler-Lagrange system of differential equations for the functional $S$ . 

Finding $r'$ ...

$ r'(theta, phi) = R mat(-sin(theta) sin(phi) theta'(t) + cos(theta) cos(phi) phi'(t);
cos(theta) sin(phi) theta'(t) + sin(theta) cos(phi) phi'(t);
-sin(phi) phi'(t)
) $

and finding $||r'(theta, phi)||$ (which frankly, is quite painful if you don't realize that this simplifies really nicely)

$ F = ||r'(theta, phi)|| = R sqrt(phi'^2 + sin^2(phi) theta'^2) #"  and  " S = integral_(t_A)^(t_B) R sqrt(phi'^2 + sin^2(phi) theta'^2) d t $ 

In this case, we have two "sets" of Euler Lagrange equations:

$ F_theta - d / (d x) F_theta' = 0 #"   and   " F_phi - d / (d x) F_phi' $
$ 0 - d / (d t) ( (sin^2(phi) theta') / (sqrt( sin^2(phi)theta'^2 + phi'^2 )) ) = 0 $
$ ( (sin(phi) cos(phi) phi'^2) / (sqrt( sin^2(phi) theta'^2 + phi'^2  )) ) - d / (d t) ( phi' / (sqrt(sin^2(phi) theta'^2 + phi'^2)) ) = 0 $ 


= 3b)
The second equation is pretty gross, so we'll tackle the first equation to solve the system

= 4)
We are given the functional  $ J[y, z] = integral_0^(pi/2) (y'^2 + z'^2 - 2 y z) d x $
subject to boundary conditions $y(0) = 0, y(pi/2) = 1, z(0) = 0, z(pi/2) = 1$

First, we find the system of Euler-Lagrange equations:

$ F_y - d / (d x) F_y' = 0 $
$ F_z - d / (d x) F_z' = 0 $

$ F_y = y'^2 - 2 z $
$ F_z = z'^2 - 2 y $

$ F_y' = 2 y' $
$ F_z' = 2 z' $

Plugging everything in, we get 
$ 2z - 2y'' = 0 => z = y'' $
$ 2y - 2z'' = 0 => y = z'' $

With these two equations, we see some intersting behavior exhibited for every fourth derivative of either $y$ or $z$

$ (y'')'' = (z)'' = y $
$ (z'')'' = (y)'' = z $

If we try a solution of the form $y = e^(alpha t)$ which has infinite derivatives, we can see that  $ y'''' = (alpha^4 - 1) e^(alpha t) = 0 $ which has the roots $alpha = 1, -1, i, -i$


This gives us the general equation (using Euler's formula) 
$ y = A_1 e^t + A_2 e^(-t) + A_3 e^(i t) + A_4 e^(-i t) = 
     A_1 e^t + A_2 e^(-t) + B_1 cos(t) + B_2 sin(t) $

and since $z = y''$

$ z = A_1 e^t + A_2 e^(-t) - B_1 cos(t) - B_2 sin(t) $

These equations take a general form without the boundary conditions, meannig the problem can't truly be solved to find the extremals of the functional. However, applying the boundary conditions allows us to solve for $A_1, A_2, B_1, B_2$

$ y(0) = 0 => A_1 + A_2 + B_1 = 0 $
$ y(pi/2) = 1 => A_1 e^(pi/2) + A_2 e^(-pi/2) + B_2 = 1 $
$ z(0) = 0 => A_1 + A_2 - B_1 = 0 $
$ z(pi/2) = 1 => A_1 e^(pi/2) + A_2 e^(-pi/2) - B_2 = 1 $



= 5)

We have the equation $z(x, y) = phi(x) + psi(y)$ representing a subset of all minimal surfaces. This gives us the functional


