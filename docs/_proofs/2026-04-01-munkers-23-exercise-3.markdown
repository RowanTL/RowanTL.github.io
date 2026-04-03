---
layout: post
title: "Munkers Section 23 Exercise 3 Proof"
math: true
date: 2026-04-01
---

This is question 3 on page 152 in Chapter 23 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Let $${A_\alpha}$$ be a collection of connected subspaces of $$X$$; Let $$A$$ be a connected subspace of $$X$$. Show
that if $$A \cap A_\alpha = \emptyset$$ for all $$\alpha$$, then $$A \cup (\cup A_\alpha)$$ is connected.

## Proof

Suppose $$A \cap A_\alpha \ne \emptyset$$ for every $$\alpha$$. Thus $$\cup A_\alpha$$ and $$A$$ have some point in common.
By Theorem 23.3, the collection of $$A$$ and $$\cup A_\alpha$$ must be connected.

## Old Question

Let $${A_\alpha}$$ be a collection of connected subspaces of $$X$$; Let $$A$$ be a connected subspace of $$X$$. Show
that if $$A \cap A_\alpha = \emptyset$$ for all $$\alpha$$, then $$A \cup (\cup A_\alpha)$$ is connected.

## Old Proof

Suppose $$A \cap A_\alpha = \emptyset$$ for all $$\alpha$$. To show that $$A \cup (\cup A_\alpha)$$ is connected, suppose,
for the sake of contradiction, that $$A \cup (\cup A_\alpha)$$ is separated. Viewing $$A \cup (\cup A_\alpha)$$ as a collection
of connected subspaces of X and using Theorem 23.3, the sets $$A$$ and $$\cup A_\alpha$$ must have an element in common. However, we know
that since $$A \cap A_\alpha = \emptyset$$ for every $$\alpha$$, the sets $$A$$ and $$\cup A_\alpha$$ cannot have any elements in
common, reaching a contradiction. Thus, $$A \cup (\cup A_\alpha)$$ is connected.

<!-- end of proof symbol -->

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
