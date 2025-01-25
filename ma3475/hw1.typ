#align(center, text(17pt)[
*MA 3475 Calculus of Variations HW 1*
\
Warren Yun])

= 1)
\
Using the formula for length of a curve, we aim to minimize the functional: $ I[y] = integral_a^b sqrt(1 + y'^2)d x $

Using the method of finite differences, we discterize this expression to 

$ phi = sum_(k=1)^(n+1) sqrt(1 + y_k^p^') Delta x_k $

and then attempt to find critical points and minimize it: 

$ (partial phi) / (partial x_j) = sum_(k=1)^(n+1) partial / (partial x_j) (F(x_k, y_k, y_k^p) Delta x_k) = 0 $

From the derivations in class, we arrive at the formula $ F(x_j, y_j, y_j^p) - F_y'(x_j, y_j, y_j^p) y_j^p = F(x_(j+1), y_(j+1), y_(j+1)^p) - F_y'(x_(j+1), y_(j+1), y_(j+1)^p)y_(j+1)^p = C $

Taking the limit as $n -> infinity$, we turn this back into a continuous function $F(y, y')$, and plug it and its first derivative into the formula above.
 
$ F(y, y') = sqrt(1 + y'^2) #"  " F_y' = (partial F) / (partial y') = y' / sqrt(1 + y'^2) $

$ sqrt(1 + y'^2) - y'^2 / sqrt(1 + y'^2) = C $

$ 1 + y'^2 - y'^2  = C sqrt(1 + y'^2) $

$ 1 / C = sqrt(1+y'^2) $

$ 1 / C^2 - 1 = beta =y'^2 $

$ y' = (d y) / (d x) = sqrt(beta) = alpha $

Finally, we solve the differential equation to obtain a linear function, which is the shortest path from point A to B.

$ integral d y = integral alpha d x  $
*$ y = alpha x +C $*


= 2)
\
We are given the functional:
$ I[y] = integral_a^b 2 pi y sqrt(1 + y'^2) d x $

Using the simplified formula from the finite differences method, we arrive at an expression where we have to solve an ODE to find such $y$ that will generate the minimal area of its surface revolution.

$ F(x_j, y_j, y_j^p) - F_y'(x_j, y_j, y_j^p) y_j^p = F(x_(j+1), y_(j+1), y_(j+1)^p) - F_y'(x_(j+1), y_(j+1), y_(j+1)^p)y_(j+1)^p = C $

$ F(y, y') = 2 pi y #"  " F_y'(y, y') = (2 pi y y') / sqrt(1 + y'^2) $

$ 2 pi y sqrt(1 + y'^2) - (2 pi y y'^2) / sqrt(1+y'^2) = C $

$ 2 pi y (1+y'^2) - 2pi y y'^2 = sqrt(1 + y'^2) C $
$ 2 pi y + 2pi y y'^2 - 2 pi y y'^2 = sqrt(1 + y'^2)C $
$ (2 pi y) / sqrt(1+y'^2) = C $
$ (4 pi^2 y^2) / (1 + y'^2) = C^2 => y'^2 = (4 pi^2 y^2) / C^2 - 1 $

Making the simplification that $c = (2pi) / C$, this expression simplifies to $ y' = (d y) / (d x) = sqrt(c^2y^2 - 1) $

$ integral 1 / (sqrt((c y)^2 -1)) d y = integral d x $
$ u = c y #"  " (d u) / (d y) = c #"  " d u = c d y $
$ 1 /c integral 1 / sqrt(u^2 - 1) d u = x + beta $
$ 1 / c cosh^(-1) (u) = x+beta => 1 / c cosh^(-1)(c y) = x + beta $
$ c y = cosh((x+beta) / c) => y =  1/c cosh((x+beta) / c) $
*$ y = C/(2pi) cosh((C x + beta) / (2pi)) $*
which is our solution to the ODE.

= 3)
\
Given the multivariable function 
$ psi = sum_(k=1)^n F(x_k, y_k, y_k^p) Delta x_k $
taking the partial derivative of $psi$ with respect to $y_k$, we get
$ (partial psi) / (partial y_k)  = sum_(k=1)^n (F_y (partial y_k) / (partial y_j)  + F_y' (partial y_k^p) / (partial y_j) ) Delta x_n = 0 $

We can simplify this massive sum by seeing that 
$ y_k^p = (y_k - y_(k-1)) / (x_k - x_(k-1)) $
$ (partial y_k^p) / (partial y_j) = 1/(Delta x_k) (delta_(j k) - delta_(j, k-1) ) $

which reduces the equation to 

$ F_y (x_j, y_j, y_j^p) Delta x_j  - F_y' (x_j, y_j, y_j^p) - F_y'(x_(j_1), y_(j+1), y_(j+1)^p) $

$ F_y(x_j, y_j, y_j^p) - (F_y' (x_j, y_j, y_j^p) - F_y'(x_(j_1), y_(j+1), y_(j+1)^p)) / (Delta x_j) $

Taking the limit as $n -> infinity$, we get the Euler-Lagrange ODE

$ F_y - d / (d x) F_y' = 0 $

If we make the assumption that $F = F(y, y')$, the expression $d / (d x) F_y'$ is no longer ambiguous, and we can expand the equation it using the multivariable chain rule:

$ F_y - d / (d x) F_y' = F_y - F_(y'y)y' - F_(y'y') y'' = 0  $
and multiplying this equation by $y'$, we arrive at an expression that can be expanded by doing the reverse-product rule.

$ F_y y' - F_(y'y)y'^2 - F_(y'y')y'y' = d / (d x) (F - y' F_y') = 0 $

which has the first integral of *$ F - y'F_y' = C $*

= 4)
\
  We are asked to show that a set $sigma.alt(a, b)$ of all continuous functions defined on the interval [a,b] with the norm $||y|| = {integral_a^b |y(x)|^2 d x}^(1/2)$ is a normed linear space. For this to be true, the following conditions have to be satisfied:

  + $||v|| = 0$ iff $v = 0$
  + $||a v|| = |a|||v||$
  + $||x+y|| <= ||x|| + ||y||$

=== Property 1 

Assuming we input $0$ into the norm function, 
$ ||0|| = { integral_a^b 0^2 d x }^(1/2) = 0^(1/2) = 0 $
we get a result of 0.


=== Property 2
$ ||a y|| = { integral_a^b a^2 y^2 d x }^(1/2) = { a^2 integral_a^b |y|^2 d x }^(1/2) = |a| {integral_a^b |y|^2 d x}^(1/2) = |a| ||y||  $


=== Property 3

$ ||x|| + ||y|| = { integral_a^b x^2 d x  }^(1/2) + { integral_a^b |y(x)|^2 d x }^(1/2) $

$ ||x + y|| = { integral_a^b (x+y)^2 d x }^(1/2) $

Squaring both values and plugging them into the original inequality, we obtain

$ ||x+y||^2  <= (||x|| + ||y||)^2 $
$ ||x||^2 + 2  { integral_a^b x^2 d x  }^(1/2) { integral_a^b |y(x)|^2 d x }^(1/2) + ||y||^2 <= (||x|| + ||y||)^2 $

$ ||x||^2 + 2 ||x|| ||y|| + ||y||^2 = (||x|| + ||y||)^2 $
$ (||x|| + ||y||)^2 = (||x|| + ||y||)^2 $

using the Cauchy-Schwarz Inequality.

= 5)
\
  A functional $J: S -> RR $ is continuous at the point (or function) $y_0 epsilon S $ if $forall epsilon > 0 : exists delta > 0: $ If $||y - y_0|| < delta$ then $ |J[y] - J[y_o]| < epsilon$  

We are given two norms:

$ ||y|| = max_(a <= x <= b) sum_(t=0)^n |y^((t)) (x)| #"                            " (1) $  
$ ||y|| = max_(a<= x <= b) {|y(x)|, |y'(x)|, ..., |y^((n))(x)|} #"      " (2) $

In this problem, we are not explicitly given a functional definition $J[y]$. Assuming that this functional is continuous with respect to norm (1), we get the inequalities:

$ ||y-y_0|| = sum_(t=0)^n max_(a <= x <= b) |y^((t)) - y_0^((t))| < delta $
$ |J[y] - J[y_0]| < epsilon $

for some positive value $delta$ and $epsilon$. If our norm for this space changes to norm (2) however, the only thing that changes is the norm-delta inequality. The epsilon inequality remains the same because we are not changing the definition of the functional by switching the norm definition. This gives us a new norm-delta inequality of: 

$ ||y-y_0|| = max_(a<=x<=b){|y-y_0|, |y'-y'_0|,..., |y^((n)) - y^((n))_0| } $

This new norm inequality only returns one difference of $n^(t h)$ derivatives for $y$ and $y_0$, unlike the original norm inequality which returns the total sum of all derivatives. This means that

$ max_(a<=x<=b){|y-y_0|, |y'-y'_0|,..., |y^((n)) - y^((n))_0| } < sum_(t=0)^n max_(a <= x <= b) |y^((t)) - y_0^((t))| < delta $

which means the epsilon-delta inequalities are still satisfied, and any functional on $sigma.alt(a,b)$ which is continuous w.r.t norm (1) is also continuous w.r.t norm(2).


