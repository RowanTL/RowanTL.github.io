---
layout: post
title: "Munkers Section 17 Theorem 17.3 Proof"
math: true
date: 2026-02-04
---

This is Theorem 17.3 on page 95 in Chapter 16 of James R. Munkers' `Topology 2nd Edition` textbook.

## Theorem

Let $$Y$$ be a subspace of $$X$$. If $$A$$ is closed in $$Y$$ and $$Y$$ is closed in $$X$$, then $$A$$ is
closed in $$X$$.

## Proof

Let $$A$$ be closed in $$Y$$. Let $$B$$ be closed in $$X$$. Because $$Y$$ is closed in $$X$$, $$X - Y$$ is open
in $$X$$. Furthermore, from Theorem 17.2, $$A = B \cap Y$$.

Taking the compliment of both sides, the equation $$X - A = X - (B \cap Y)$$ is formed, simplified into
$$X - A = (X - B) \cup (X - Y)$$. Since $$(X - B)$$ and $$(X - Y)$$ are both open in $$X$$, by definition of a
topology, $$X - A$$ must be an open set in $$X$$. Thus $$A$$ is a closed set in $$X$$.  

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
