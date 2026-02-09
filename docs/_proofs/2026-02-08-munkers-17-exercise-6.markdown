---
layout: post
title: "Munkers Section 17 Exercise 6 Proof"
math: true
date: 2026-02-08
---

This is exercise 6 on page 101 in Chapter 17 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Let $$A, B,$$ and $$\mathcal{A_\alpha}$$ denote subsets of a space $$X$$. Prove the following.

## (a) If $$A \subset B$$, then $$\overline{A} \subset \overline{B}$$ 

Let $$x \in \overline{A}$$, there must be closed sets containing $$A$$ but not containing all of $$B$$.
Thus, $$x \notin \overline{A}$$ for all $$y \in B$$. Finally, $$\overline{A} \subset B$$.

Thus $$A \subset \overline{A} \subset B \subset \overline{B}$$ and $$\overline{A} \subset \overline{B}$$.

$$\tag*{$\blacksquare$}$$

## (b) Prove $$\overline{A \cup B} = \overline{A} \cup \overline{B}$$

### For $$\overline{A \cup B} \subset \overline{A} \cup \overline{B}$$

$$A \cup B \subset \overline{A \cup B}$$. Also, $$A \subset \overline{A}$$ and $$B \subset \overline{B}$$. Thus,
$$\overline{A \cup B} \subset \overline{A} \cup \overline{B}$$.

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
