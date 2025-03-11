#import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices


#show: arkheion.with(
  title: "Optimal Control of a 2D Quadrotor",
  authors: (
    (name: "Warren Yun", email: "wyun@wpi.edu",  affiliation: "997076869", orcid: "0000-0000-0000-0000"),
  
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [This paper seeks to use Variational Calculus and modern NLP techniques to optimize trajectories of a quadrotor in 2D. ],
)

= Introduction
As the world shifts towards one focused on autonomous machines deployed in human environment, the need for research in optimal control becomes extremely important. Many of these machines take the form of arms, humanoids, or even drones: tackling a vareity of different forces as they navigate unknown environments and avoid collisions with the things around them.

To tackle these problems, we employ core techniques from variational calculus to define a cost functional that attempts to minimize energy usage. That, combined with the equations of motion of the system, we can use modern techniques like interior point optimization (IPOPT) and the multiple shooting method to generate optimal trajectories given a initial and final state.

= Equations of Motion 

For simplicity, we're going to be performing this optimization on a quadrotor in 2D space. Deriving the dynamics and doing this for 3D space is roughly the same with more steps, which doesn't give us much value.

Let the state vector for this system be:

$ bold(x) = mat(x; y; theta; dot(x); dot(y); dot(theta) ) $

where $x, y$ are the coordinates of the quadrotor in 2D space, $theta$ is the pitch angle, and $dot(x), dot(y)$ and $dot(theta)$ are the corresponding velocities. Assume we have a control vector $u$:

$ u = mat(F; tau) = mat(f_L + f_R; (f_R - f_L)L) $

where $f_R, f_L$ are the forces applied on each motor on the side of the quadrotor, $F$ is the total thrust, and $tau$ is torque to control the pitch angle.

#figure(
  image("images/drone.png", width: 40%),
  caption: [
    Free body diagram of a 2D quadrotor.
  ],
)

With this, we derive the nonlinear dynamics of the quadrotor:

$ bold(dot(x)) = mat(dot(x); dot(y); dot(theta); -F/m sin(theta); F/m cos(theta) - g; tau / I) $

where $m$ is the mass of the quadrotor, $I$ is the moment of inertia about the COM, and $g$ is gravity.

= Optimization 
Wtih our equations of motion defined, we now construct a quadratic cost functional that aims to minmize control effort when minimized.

$ J = integral_0^T (F(t)^2 + tau(t)^2)d t  $

where $T$ is the final time. 

  Because we want to factor the natural dynamics of the quadrotor as constraints, we introduce Lagrange multipliers (also known as costate variables) to formulate the Hamiltonian:

  $ lambda = mat(lambda_x, lambda_y, lambda_theta, lambda_(v_x), lambda_(v_y), lambda_omega)^T $

  $ H = F^2 + tau^2 + lambda_x v_x + lambda_y v_y + lambda_theta omega + lambda_(v_x) (-F/m sin(theta)) + lambda_(v_y) (F/m cos(theta) - g) + lambda_omega tau/I  $

  We now have everything we need to derive the necessary conditions for optimality:

$ (partial H) / (partial F) = 2F - lambda_(v_x) sin(theta) / m + lambda_(v_y) cos(theta) / m  = 0 $

Leaving the optimal thrust to be

$ F = 1/(2m) (lambda_(v_x) sin(theta) - lambda_(v_y) cos(theta)) $

Addressing $tau$,

$ (partial H) / (partial tau) = 2 tau + lambda_omega 1/I  = 0 $
$ tau = -lambda_omega/ (2I)  $

and finding the rest of the costate equations, which is derived from $ dot(lambda_i) = - (partial H) / (partial bold(x_i)) $

$ dot(lambda_x) = 0 #"  " dot(lambda_y) = 0 #"  " dot(lambda_theta) = F/m (lambda_(v_x) cos(theta) + lambda_(v_y) sin(theta)) #"  " $ 

$ dot(lambda_(v_x)) = -lambda_x #"  " dot(lambda_(v_y)) = -lambda_y #" " dot(lambda_omega) = -lambda_theta $

With these equations, we have a two-point boundary value problem that can realistically be solved using a numerical method. Analytic solutions are usually not feasible due to the nonlinearity of the dynamics. so we employ CasADi, an open-source framework for optimization.

To solve these kinds of problems, we perform a method called transcription which attempts to discretize this continuous problem into a discrete one. We define these "nodes" or "interior points" that we feed into a NLP solver, solving an optimization problem while following various constraints.

For this problem, we're going to use the "multiple shooting" transcription method. Given $N$ interior points, a desired path time, and the dynamics of the quadrotor we derived above, we can minimize the cost functional while enforcing the correct dynamics at each interior point by establishing it as a constraint.

#figure(
  image("images/trajectories.png", width: 70%),
  caption: [
    Path of optimal control for a quadrotor traveling to (5,5) in (x,y) space.  ],
)

= Conclusion
Today we explored a simple but effective example of optimal control of a 2D quadrotor using variational calculus and numerical methods used in modern optimal control applications. Further improvements could involve research in a more robust transcription method (i.e. collocation methods instead of shooting methods), and applying these techniques to quadrotors in 3D. This control scheme is used for a variety of different autonomous robots, and different control schemes like LQR, MPC, etc can be employed and explored to achieve optimal control.

= References
- Dynamics of a 2D quadrotor, https://cookierobotics.com/052/
- Acrobots, Cart-Poles, and Quadrotors, MIT Underactuated, https://underactuated.csail.mit.edu/acrobot.html
- An Introduction to Trajetory Optimization, https://epubs.siam.org/doi/10.1137/16M1062569
- Transcription Methods for Trajectory Optimization, https://arxiv.org/pdf/1707.00284
- Optimal Control Problems in a nutshell, https://web.casadi.org/blog/ocp/
