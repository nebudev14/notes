= Warren Yun 3

= 1a)
To prove that a Frechet derivative is unique, assume for a functional we have two assignments of $Delta J$

$ Delta J = phi_1[h] + r_1[h] #"   " Delta J = phi_2[h] + r_2[h] $

and taking the differences..

$ phi_1[h] - phi_2[h] + r_1[h] - r_2[h] = 0 <= [r_2[h] + r_1[h]] $




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
To make the equations less verbose and awful looking, we'll make the simplification $E = phi'^2 + sin^2(phi) theta'^2 $, giving us $F = R sqrt(E)$.


= 3b)

