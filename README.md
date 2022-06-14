# Applied-Probability:<br /> Law of Iterated Logarithm for Extensions of Brownian motion<br />
This research has been published in The 29th South Taiwan Statistics Conference: Applied Probability Section.

The main topic about this research is to find the **asymptotic behavior** of Brownian motion and its extensions such as fractional Brownian motion. The Law of Iterated Logarithm (LIL) is to describe the magnitude of a stochastic process while time goes to infinty. Below is the mathematical fomular for LIL for standard Brownian motion.

$$\limsup\limits_{t\rightarrow \infty} \frac{B(t)}{\sqrt{2t \ln \ln t}} = 1\quad \mathrm{a.s.}$$

The stochastic processes I was investigating are:
- Maximum Process of Absolute Value of Standard Brownian Motion $M(t) = \max\limits_{s\leqslant t}{|B(s)|}$

- Reflected Fraction Brownian Motion $Q_{B_{H}}(t)=B_H(t)-ct+\max(Q_{B_{H}}(0),-\inf\limits_{s\in [0,t]}(B_H(s)-cs))$, where $B_H$ is the standard fractional Brownian motion

- Maximum Process of Reflected Fraction Brownian Motion $\max\limits_{s\leqslant t}{Q_{B_{H}}(s)}$
