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

Given some $$p, q \in \mathbb{Z}_+$$, let $$\mathbb{F}^{p \times q}$$ denote the set of all matrices
with $$p$$ rows and $$q$$ columns and entries in $$\mathbb{F}$$. Specifically, a column vector with $$p$$ rows is denoted as
$$\mathbb{F}^{p \times 1}$$.

Next, a neural network is a function:

$$
  \mathbb{f}: \mathbb{F}^{n_1 \times 1} \rightarrow \mathbb{F}^{n_k \times 1}
$$

Now for a little more notation that ties into the neural network later.

Let $$\mathcal{F} = \{f: \mathbb{F}^{p \times 1} \rightarrow \mathbb{F}^{q \times 1} \mid p, q \in \mathbb{Z}_+ \}$$

### Dense (Affine) Layer Definition

For some $$p, q \in \mathbb{Z}_+$$, define a dense layer function, $$\ell_d \in \mathcal{F}$$ such that

$$
  \ell_d: \mathbb{F}^{q \times 1} \rightarrow \mathbb{F}^{p \times 1}
$$

To describe the transformation to an input vector, we need to define a few variables.

$$
\begin{aligned}
  W &\in \mathbb{F}^{p \times q} \\
  X &\in \mathbb{F}^{q \times 1} \\
  B &\in \mathbb{F}^{p \times 1}
\end{aligned}
$$

Finally,

$$
  \ell_d(X) = WX + B
$$

### Activation Layer Definition

Take some differentiable function $$g: \mathbb{R} \rightarrow \mathbb{R}$$.

Next, for some $$p \in \mathbb{Z}_+$$, define an activation layer function, $$\ell_a \in \mathcal{F}$$ such that

$$
  \ell_a: \mathbb{F}^{p \times 1} \rightarrow \mathbb{F}^{p \times 1}
$$

applies the function $$g|_{\mathbb{F}}: \mathbb{F} \rightarrow \mathbb{F}$$, the restriction of $$g$$ to $$\mathbb{F}$$, to each
element of an input vector.

To visualize, let

$$
  X = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix} \in \mathbb{F}^{p \times 1}
$$

then,

$$
  \ell_a(X) = \ell_a\left(\begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix}\right)
  = \begin{bmatrix} g|_{\mathbb{F}}(x_1) \\ g|_{\mathbb{F}}(x_2) \\ \vdots \\ g|_{\mathbb{F}}(x_p) \end{bmatrix}
$$

### Final Pieces

Let $$L = \{f \in \mathcal{F} \mid f$$ is a dense or activation layer function $$\} \subset \mathcal{F}$$.

Next, let $$f_1, f_2, ..., f_{k-1} \in L$$ such that 

$$
\begin{aligned}
  &f_1 : \mathbb{F}^{n_1 \times 1} \rightarrow \mathbb{F}^{n_2 \times 1} \\
  &f_2 : \mathbb{F}^{n_2 \times 1} \rightarrow \mathbb{F}^{n_3 \times 1} \\
  &\vdots \\
  &f_{k-1} : \mathbb{F}^{n_{k-1} \times 1} \rightarrow \mathbb{F}^{n_k \times 1}
\end{aligned}
$$

Now, hook this into the original neural network function

$$
  \mathbb{f} = f_{k-1} \circ f_{k-2} \circ \cdots \circ f_{1}
$$

This should be the forward pass of a neural network formalized.

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
