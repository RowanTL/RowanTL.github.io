---
layout: post
title: "Munkers Section 12 Example 4 Check"
math: true
date: 2026-01-20
---

This is my check that $\mathcal{T}_c$ is a topology in James R. Munkers': Topology 2nd Edition, Section 12, Example 4.

## Definition of a Topology

A topology on an arbitrary set $X$, denoted by $\mathcal{T}_c$ in this case, is a collection
of the subsets of $X$ adhering to three properties:

1) $\emptyset$ and $X$ are in $\mathcal{T}_c$  
2) The union of the elements of any nonempty subcollection of $\mathcal{T}_c$ is in $\mathcal{T}_c$  
3) The intersection of the elements of any nonempty, finite subcollection of $\mathcal{T}_c$ is in $\mathcal{T}_c$

$\mathcal{T}_c$ needs to adhere to these three rules.

## $\mathcal{T}_c$ definition

Let $\mathcal{T}_c$ be the collection of all subsets $U$ of $X$ such that $X - U$ either is countable or
is all of $X$.

## Checking the properties for a topology

1) $X - \emptyset = X$ as $\emptyset$ is a subset of $X$. $X - X = \emptyset$ as all of $X$ is a subset of $X$.  
2) If $\{U_\alpha\}$ is an indexed family of nonempty elements of $$\mathcal{T}_c$$, need to show $\bigcup U_\alpha$
    is in $\mathcal{T}_c$, compute

$$
  X - \bigcup U_\alpha = \bigcap(X - U_\alpha)
$$

By De Morgan's Law

3) TBD until I understand how the intersection of all $X - U_\alpha$ proves property number 2 for a topology.

## Extras

Link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
