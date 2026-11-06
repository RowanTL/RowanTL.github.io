---
layout: post
title:  "NN Forward Pass Formalization"
date:   2026-11-06 11:00:00 -0500
categories: Neural_Networks
math: true
---

## Overview

A formalization of a neural network's forward pass.

## Formalization

Let $$\mathbb{F} \subset \mathbb{Q}$$ be a finite set containing all 64-bit floating point values.
Let $$k \in \mathbb{Z}_+$$ and $$n_1, n_2, ..., n_k \in \mathbb{Z}_+$$.

For some $$p, q \in \mathbb{Z}_+$$, let $$\mathbb{F}^{p \times q}$$ denote the set of a all matrices
with $$p$$ rows and $$q$$ columns. Specifically, a column vector with $$p$$ rows is denoted as
$$\mathbb{F}^p$$.

Next, a neural network is a function:

$$
  f: \mathbb{F}^{n_1} \rightarrow \mathbb{F}^{n_k}
$$

Now for a little more notation that ties into the neural network later.

Let $$\mathcal{F} = \{f \mid f: \mathbb{F}^p \rightarrow \mathbb{F}^q$$ for all $$p, q \in \mathbb{Z}_+ \}$$

### Dense Layer Function Definition

For some $$p, q \in \mathbb{Z}_+$$, define a dense layer function, $$\ell_d \in \mathcal{F}$$ such that

$$
  \ell_d: \mathbb{F}^p \rightarrow \mathbb{F}^q
$$

To describe the transformation to an input vector, we need to define a few variables.

$$
\begin{aligned}
  W &\in \mathbb{F}^{p \times q} \\
  X &\in \mathbb{F}^q \\
  B &\in \mathbb{F}^p
\end{aligned}
$$

Finally,

$$
  \ell_d(X) = WX + B
$$

### Activation Layer Definition

For some $$p \in \mathbb{Z}_+$$, define an activation layer function, $$\ell_a \in \mathcal{F}$$ such that

$$
  \ell_a: \mathbb{F}^p \rightarrow \mathbb{F}^p
$$

applies some first order differentiable function $$g: \mathbb{F} \rightarrow \mathbb{F}$$ to each
element of an input vector.

To visualize, let

$$
  X = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix} \in \mathbb{F}^p
$$

then,

$$
  \ell_a(X) = \ell_a\left(\begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix}\right)
  = \begin{bmatrix} g(x_1) \\ g(x_2) \\ \vdots \\ g(x_p) \end{bmatrix}
$$

### Final Pieces

Let $$L = \{f \in \mathcal{F} \mid f$$ is a dense or activation layer function $$\}$$ be a subset of $$\mathcal{F}$$.

Next, let $$f_1, f_2, ..., f_{k-1} \in L$$ such that 

$$
\begin{aligned}
  &f_1 : \mathbb{F}^{n_1} \rightarrow \mathbb{F}^{n_2} \\
  &f_2 : \mathbb{F}^{n_2} \rightarrow \mathbb{F}^{n_3} \\
  &\vdots \\
  &f_{k-1} : \mathbb{F}^{n_{k-1}} \rightarrow \mathbb{F}^{n_k}
\end{aligned}
$$

Now, hook this into the original neural network function

$$
  f = f_{k-1} \circ f_{k-2} \circ \cdots \circ f_{1}
$$

This should be the forward pass of a neural network formalized.

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
