---
layout: post
title: "Munkers Section 27 Exercise 6 Proof"
math: true
date: 2026-05-25
---

This is exercise 6 on page 178 in Chapter 27 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Let $$A_0$$ be the closed interval $$[0, 1]$$ in $$\mathbb{R}$$. Let $$A_1$$ be the set obtained from $$A_0$$ by
deleting its "middle third" $$(\frac{1}{3}, \frac{2}{3})$$. Let $$A_2$$ be the set obtained from $$A_1$$ by
deleting its "middle thirds" $$(\frac{1}{9}, \frac{2}{9})$$ and $$(\frac{7}{9}, \frac{8}{9})$$. In general,
define $$A_n$$ by the equation

$$
  A_n = A_{n - 1} - \bigcup_{k = 0}^{\infty}(\frac{1 + 3k}{3^n}, \frac{2 + 3k}{3^n}).
$$

The intersection

$$
  C = \bigcup_{n \in \mathbb{Z}_{+}}A_n
$$

is called the **Cantor Set**; it is a subspace of $$[0, 1]$$.

## Proof 

### a) Show that $$C$$ is totally disconnected

It suffices to prove the conditional: If $$D$$ is a connected subspace of $$C$$, then $$D$$ is a one-point set.

The contrapositive of the conditional above is: If $$D$$ is a subspace of $$C$$ with more than one element,
then $$D$$ has a separation. We will prove the contrapositive.

To begin, suppose $$D$$ is a subspace of $$C$$ with two or more elements. Next, take any interval
$$(a, c) \subset [0, 1]$$ and $$U$$ being some open set of $$C$$. The subspace $$D$$ may be described
as

$$
  D = U \cap (a, c)
$$

Now, since $$D$$ has more than one element, take distinct elements $$x, y \in D$$ in which $$x < y$$.
<!-- Then, select some $$b \in [0, 1] - C$$ such that $$a < b < c$$. -->

To show we may find two disjoint sets whose union is $$D$$, it suffices to show there exists some $$b \in (a, c)$$
such that $$b \notin C$$. Because $$(a, c)$$ is a fixed interval, there exists some $$n \in \mathbb{N}$$ such
that some $$I \subset A_n$$ is fully contained within $$(a, c)$$, that is $$I \subset (a, c)$$. Next, take
$$A_{n+1}$$. By definition of the Cantor Set, the "middle thirds" of $$I$$ are intersected out. These
"middle thirds" contain points within $$(a, c)$$ and not within $$C$$. Take some $$b$$ from a
"middle third" to satisfy the condition imposed in the first sentence of this paragraph.


Because $$x, y$$ are distinct, we find two open, disjoint sets $$X = (a, b) \cap U$$ and $$Y = (b, c) \cap U$$
where $$X \cup Y = D$$. Thus, proving the contraposition, completing part a.

### b) Show that $$C$$ is compact

Because each $$A_i$$ for $$i \in \mathbb{Z}_{+}$$ can be written as a finite union of closed sets in 
$$[0, 1]$$, the infinite intersection of these sets are also closed. Thus, $$C$$ is closed in $$[0, 1]$$.
Now, using Theorem 26.2, the subspace $$C$$ is compact as $$[0, 1]$$ is also compact. This concludes
part b of the proof.

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
