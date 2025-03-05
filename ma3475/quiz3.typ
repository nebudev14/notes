#align(center, text(17pt)[
*MA 3475 Calculus of Variations Quiz 3*
\
Warren Yun
\
Student ID: 997 ])

= 1a)
We are given the functional 
$ integral_a^b F(x, y, y')  d x $

The WE corner point conditions require that the conjugate momentum and Hamiltonian of the functional remain continuous at a corner point (some point where the derivative of a function may jump ). This is to ensure that the functional still remains an extremum, while simultaneously ensuring there are no discontinuities in momentum or energy.

Written out, the WE conditions for the functional above at a corner point $x=c$ are:

$ F_y'(c^-, y(c), y'(c^-)) = F_y'(c^+, y(c), y'(c^+)) $
$ H(c^-, y(c), y'(c^+)) = H(c^+, y(c), y'(c^+)) $

where 
$ H(x, y, y') = F(x, y, y') - y' F_y'(x, y, y') $

= 1b)


= 3)

Given the functional for a spring-mass system of two masses and two springs:

$ J[y] = integral_(t_a)^(t_b) F(y_1, y_2, y_1', y_2') d t $
$ F = 1/2 (m_1 y'_1^2 + m_2 y'_2^2 - k_1 y_1^2 - k_2 (y_2 - y_1)^2) $

The conjugate momentum is defined as $p = (partial F) / (partial dot(q))$. In this scenario, we have two of these, defined as

$ p_(y_1) = (partial F) / (partial y_1') = m_1 y'_1  $
$ p_(y_2) = (partial F) / (partial y_2') = m_2 y'_2 $

With these, we can construct the Hamiltonian $H$ through the Legendre transformation:

$ H = p_(y_1) y_1' + p_(y_2) y_2' - F $
$ y'_i = p_(y_i) / (m_1) $

$ H = p_(y_1)^2 / m_1 + p_(y_2)^2 / m_2 - 1/2 (p_(y_1)^2 / m_1 + p_(y_2)^2 / m_2 - k_1 y_1^2 - k_2(y_2 - y_1)^2) $


$ H = p_(y_1)^2 / (2 m_1) + p_(y_2)^2 / (2 m_2) + 1/2 (k_1 y_1^2 + k_2(y_2 - y_1)^2) $

Obtaining the Hamiltonian system of ODEs:

$ dot(y_i) = (partial H) / (partial p_(y_i)) , #"  " dot(p_(y_i)) = - (partial H) / (partial y_i) $

$ dot(y_1) = p_(y_1) / m_1 , #"  " dot(y_2) = p_(y_2) / m_2 $
$ dot(p_(y_1)) = -k_1 y_1 + k_2(y_2 - y_1), #"  " dot(p_(y_2)) = -k_2 (y_2 - y_1) $

The conjugate momenta and Hamiltonian function have to be continuous at any corner point $t_c$ because of the Weirstrass Erdman conditions for an extremum. If the conjugate momneta and Hamiltonian don't satisfy this constraint, these systems of equations don't classify as an extremum of action. 
