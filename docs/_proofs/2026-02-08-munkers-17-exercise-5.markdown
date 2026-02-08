---
layout: post
title: "Munkers Section 17 Exercise 5 Proof"
math: true
date: 2026-02-08
---

This is exercise 5 on page 100 in Chapter 17 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Let X be an ordered set in the order topology. Show that $$\overline{(a, b)} \subset [a, b]$$. Under what conditions does
equality hold.

## Proof

### Show $$\overline{(a, b)} \subset [a, b]$$

Let $$x \in \overline{(a, b)}$$ in an order topology with no smallest or largest element. Furthermore, $$(-\infty, a] \cup [b, \infty)$$ are open
in $$X$$. Thus, $$[a, b]$$ itself must be closed in $$X$$. Since, by definition of the intersection, the only elements available in the closure
are those within $$[a, b]$$, $$x \in [a, b]$$. 

For the case with a smallest element:

Let $$x \in \overline{(a, b)}$$ in an order topology with a smallest element $$a_0$$.
Thus, the set $$(a_0, a) \cup (b, \infty)$$ also open in $$X$$. Thus, $$[a, b]$$ is a closed set.
With same reasoning as above, $$x \in [a, b]$$.

For the case with a largest element:

Similar reasoning applies to the largest element.

### Under what conditions does equality hold

Equality holds in continuous domains, like $$\mathbb{R}$$, but not discrete domains, like $$\mathbb{Z}$$, where single point sets are
considered open.

In the case of an order topology of a discrete domain, the single point set $$\{a\}$$ is open. With the set $$(a, b)$$ in mind, the set $$(-\infty, a) \cup (a, \infty)$$ is closed.
This is a set containing $$(a, b)$$ but not the point $$a$$. Thus, $$x \in [a, b]$$ such that $$x \notin \overline{(a, b)}$$.

Continuous domains lack the single point set. Equality holds then.

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
