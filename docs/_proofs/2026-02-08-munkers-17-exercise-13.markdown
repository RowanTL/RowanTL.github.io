---
layout: post
title: "Munkers Section 17 Exercise 13 Proof"
math: true
date: 2026-02-08
---

This is exercise 13 on page 101 in Chapter 17 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Show that $$X$$ is Hausdorff if and only if the **diagonal** $$\bigtriangleup = \{x \times x : x \in X\}$$ is closed in $$X \times X$$.

## (=>) 

By definition of a Hausdorff space, for each pair $$x, y$$ of distinct points of $$X$$, there exists neighborhoods $$U$$ and $$V$$ of
$$x$$ and $$y$$ respectively. $$U \cap V = \emptyset$$.

To form a basis for $$X \times X$$, the sets $$U \times V$$ may be used. Because $$U \cap V = \emptyset$$, the ordered pairs generated
by such cartesian product may not contain any elements which are the same. In other words, for any $$a \in U$$, $$(a, a)$$ may not
exist in the open sets. Same for $$V$$. Thus, the infinite union of these sets may never contain any ordered pairs with the same elements.
Finally, because the infinite union of open sets are open, the closed set looks like $$\bigtriangleup$$, completing the conditional.

## (<=)

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
