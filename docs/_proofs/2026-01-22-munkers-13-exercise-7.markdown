---
layout: post
title: "Munkers Section 13 Exercise 7"
math: true
date: 2026-01-22
---

This is question 7 on page 83 in Chapter 13 of James R. Munkers' `Topology 2nd Edition` textbook.

## Question

Consider the following topologies on $$\mathbb{R}$$:
- $$\mathcal{T}_1$$ = the standard topology
- $$\mathcal{T}_2$$ = the topology of $$\mathbb{R}_K$$
- $$\mathcal{T}_3$$ = the finite complement topology
- $$\mathcal{T}_4$$ = the upper limit topology, having all sets (a, b] as basis
- $$\mathcal{T}_5$$ = the topology having all sets $$(-\infty, a) = \{x : x \lt a\}$$ as basis

Which of these topologies contains the others?

## My Contains

Blank spaces mean I don't think one topology contained the other.

|                    | $$\mathcal{T}_1$$                       | $$\mathcal{T}_2$$                       | $$\mathcal{T}_3$$                       | $$\mathcal{T}_4$$                       | $$\mathcal{T}_5$$                        |
| $$\mathcal{T}_1$$  | $$\mathcal{T}_1 \subset \mathcal{T}_1$$ |                                         |                                         |                                         |                                          |
| $$\mathcal{T}_2$$  | $$\mathcal{T}_1 \subset \mathcal{T}_2$$ | $$\mathcal{T}_2 \subset \mathcal{T}_2$$ |                                         |                                         |                                          |
| $$\mathcal{T}_3$$  |                                         |                                         | $$\mathcal{T}_3 \subset \mathcal{T}_3$$ |                                         |  $$\mathcal{T}_5 \subset \mathcal{T}_3$$ |
| $$\mathcal{T}_4$$  | $$\mathcal{T}_1 \subset \mathcal{T}_4$$ |                                         |                                         | $$\mathcal{T}_4 \subset \mathcal{T}_4$$ |                                          |
| $$\mathcal{T}_5$$  |                                         |                                         |                                         |                                         |  $$\mathcal{T}_5 \subset \mathcal{T}_5$$ |

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
