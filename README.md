# Applied-Probability:<br /> Law of Iterated Logarithm for Extensions of Brownian motion<br />
This is a joint work with Prof. Mayru Chen in Applied Mathematics Department, NSYSU.

This research has been published in The 29th South Taiwan Statistics Conference: Applied Probability Section.

## Math Work

The main topic about this research is to find the **asymptotic behavior** of Brownian motion and its extensions such as fractional Brownian motion. The Law of Iterated Logarithm (LIL) is to describe the magnitude of a stochastic process while time goes to infinty. Below is the mathematical fomular for LIL for standard Brownian motion.

$$\limsup\limits_{t\rightarrow \infty} \frac{B(t)}{\sqrt{2t \ln \ln t}} = 1\quad \mathrm{a.s.}$$

The stochastic processes I was investigating are:
- Maximum Process of Absolute Value of Standard Brownian Motion $M_{|B|}(t) = \max\limits_{s\leqslant t}{|B(s)|}$
- Reflected Fraction Brownian Motion $$Q_{B_{H}}(t)=B_H(t)-ct+\max(Q_{B_{H}}(0),-\inf\limits_{s\in [0,t]}(B_H(s)-cs)),$$ where $B_H$ is the standard fractional Brownian motion
- Maximum Process of Reflected Fraction Brownian Motion $M_{Q_{B_{H}}}(t) = \max\limits_{s\leqslant t}{Q_{B_{H}}(s)}$

In this paper, we provide the closed-form of the asymptotic functions for these three processes and rigorous mathematical proof.

## Simulation

In the simulation folder, I provide the r code to simulate the extensions of Brownian motion. The source code of generation of standard Brownian motion comes from the r package ```sde```. Below is the simulations of the stochastic processes I mentioned above.
<p align="center">
<img height="200" src="https://github.com/simonchung87/Applied-Probability/blob/main/Simulation/MPS.png">
<img height="200" src="https://github.com/simonchung87/Applied-Probability/blob/main/Simulation/RBM.png">
<img height="200" src="https://github.com/simonchung87/Applied-Probability/blob/main/Simulation/MRBM.png">
</p>


<a><img src="https://visitor-badge.glitch.me/badge?page_id=simonchung87.503192919" alt="visitors"></a>
