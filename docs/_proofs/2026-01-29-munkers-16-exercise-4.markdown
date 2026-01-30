---
layout: post
title: "Munkers Section 16 Exercise 6 Proof"
math: true
date: 2026-01-29
---

This is question 4 on page 92 in Chapter 16 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

A map $$f: X \rightarrow Y$$ is said to be an **open map** if for every open set $$U$$ of $$X$$, the set
$$f(U)$$ is open in Y. Show that $\pi_1 : X \times Y \rightarrow X$ and $\pi_2 : X \times Y \rightarrow Y$ are
open maps.

$$X$$ and $$Y$$ are both topologies.

## Proof

For $$\pi_1 : X \times Y \rightarrow X$$:

<!-- If $$(x, y) \in X \times Y$$, then there exists open sets such that $$x \in U$$ is open in $$X$$ and $$y \in V$$ is open in $$Y$$. -->
<!-- Therefore, $$\pi_1: U \times Y \rightarrow U$$ must equal $$U$$ for each $$U$$ open in $$X$$. -->

Let $$U$$ be an open set of $$X$$. Because $$\pi_1$$ maps to the entirety of $$X$$, discarding $$Y$$ in the process, it follows that $$U$$ must be
in the resulting topological space $$X$$.

Similar logic holds for $$\pi_2 : X \times Y \rightarrow Y$$:

<!-- If $$(x, y) \in X \times Y$$, then there exists open sets such that $$x \in U$$ is open in $$X$$ and $$y \in V$$ is open in $$Y$$. -->
<!-- Therefore, $$\pi_2: X \times V \rightarrow V$$ must equal $$V$$ for each $$V$$ open in $$Y$$. -->

Let $$V$$ be an open set of $$Y$$. Because $$\pi_2$$ maps to the entirety of $$Y$$, discarding $$X$$ in the process, it follows that $$V$$ must be
in the resulting topological space $$Y$$.

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
