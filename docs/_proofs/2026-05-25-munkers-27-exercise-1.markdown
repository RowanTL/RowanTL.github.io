---
layout: post
title: "Munkers Section 27 Exercise 1 Proof"
math: true
date: 2026-05-25
---

This is exercise 1 on page 177 in Chapter 27 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Prove that if $$X$$ is an ordered set in which every closed interval is compact, then $$X$$ has the least upper
bound property.

## Proof 

Suppose $$X$$ is an ordered set in which every closed interval is compact. Suppose $$C$$ is a closed set of $$X$$.
Because $$C$$ is compact by assumption, we know the union of some finite collection of open sets equals $$C$$. Thus,
$$C$$ must also be open.

Now, consider the closed ray $$(-\infty, a]$$ where $$a \in X$$. This must also be open. Therefore, the only open interval we can form
with an inclusive upper boundary consists of those of the form (a, b] where $$a < b \in X$$ and $$b$$ is the largest element of $$X$$.

Because $$X$$ has a largest element, the set $$C$$ must be bounded above. To find the least upper bound of $$C$$, we may take
the smallest element of all elements that are bounded above $$C$$. Thus, showing the set $$C$$ has the least upper bound property,
completing the proof.

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
