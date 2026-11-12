---
layout: post
title:  "NN Backward Pass Formalization"
date:   2026-11-10 12:00:00 -0500
categories: Neural_Networks
math: true
---

## Overview

A formalization of a neural network's backward pass. All of the previously defined notation
carries over from the [forward pass](https://rowantl.github.io/proofs/2026-11-06-nn-forward-pass-formalization/) section

## Forward Pass Notation

Let $$\mathbb{F} \subset \mathbb{Q}$$ be a finite set containing all 64-bit floating point values.
Let $$k \in \mathbb{Z}_+$$ and $$n_1, n_2, ..., n_k \in \mathbb{Z}_+$$.

For some $$p, q \in \mathbb{Z}_+$$, let $$\mathbb{F}^{p \times q}$$ denote the set of all matrices
with $$p$$ rows and $$q$$ columns. Specifically, a column vector with $$p$$ rows is denoted as
$$\mathbb{F}^p$$.

Let $$\mathcal{F} = \{f \mid f: \mathbb{F}^p \rightarrow \mathbb{F}^q$$ for all $$p, q \in \mathbb{Z}_+ \}$$

## Formalization

The backwards pass of a neural network is:

$$
  \mathbb{f}^{-1}: \mathbb{F}^{n_k} \rightarrow \mathbb{F}^{n_1}
$$

### Layer Linear Systems of Equations

Starting with some dense layer in a neural network, $$\ell_{d} : \mathbb{F}^q \rightarrow \mathbb{F}^p$$, we have

$$
  \ell_d(X) = WX + B
$$

where

$$
\begin{aligned}
  W &\in \mathbb{F}^{p \times q} \\
  X &\in \mathbb{F}^q \\
  B &\in \mathbb{F}^p
\end{aligned}
$$

We may rewrite $$W$$, $$X$$, and $$B$$ as follows:

$$
  W = \begin{bmatrix}
    w_{11} & w_{12} & \cdots & w_{1q} \\
    w_{21} & w_{22} & \cdots & w_{2q} \\
    \vdots & \vdots & \ddots & \vdots \\
    w_{p1} & w_{p2} & \cdots & w_{pq}
  \end{bmatrix},
  \quad
  X = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_q \end{bmatrix},
  \quad
  B = \begin{bmatrix} b_1 \\ b_2 \\ \vdots \\ b_p \end{bmatrix}
$$

Now, following the dense layer, $$\ell_d$$ equation above step by step, we have

$$
  WX = \begin{bmatrix}
    w_{11} x_1 + w_{12} x_2 + \cdots + w_{1q} x_q \\
    w_{21} x_1 + w_{22} x_2 + \cdots + w_{2q} x_q \\
    \vdots \\
    w_{p1} x_1 + w_{p2} x_2 + \cdots + w_{pq} x_q
  \end{bmatrix} \in \mathbb{F}^p
$$

and

$$
  WX + B = \begin{bmatrix}
    w_{11} x_1 + w_{12} x_2 + \cdots + w_{1q} x_q + b_1 \\
    w_{21} x_1 + w_{22} x_2 + \cdots + w_{2q} x_q + b_2 \\
    \vdots \\
    w_{p1} x_1 + w_{p2} x_2 + \cdots + w_{pq} x_q + b_p
  \end{bmatrix} \in \mathbb{F}^p
$$

Now, for some $$Y \in \mathbb{F}^p$$, we have $$Y = WX + B$$ and get the following system of linear equations for a given dense layer:

$$
\begin{aligned}
  y_1 &= w_{11} x_1 + w_{12} x_2 + \cdots + w_{1q} x_q + b_1 \\
  y_2 &= w_{21} x_1 + w_{22} x_2 + \cdots + w_{2q} x_q + b_2 \\
  &\vdots \\
  y_p &= w_{p1} x_1 + w_{p2} x_2 + \cdots + w_{pq} x_q + b_p
\end{aligned}
$$

A similar argument can be made for an activation layer $$\ell_a: \mathbb{F}^p \rightarrow \mathbb{F}^p$$.

$$
\begin{aligned}
  y_1 &= g(x_1) \\
  y_2 &= g(x_2) \\
  &\vdots \\
  y_p &= g(x_p)
\end{aligned}
$$

Rewriting the layers as above is helpful in the next section.

### Error Definition

From the forward pass section, a neural network is defined as:

$$
  \mathbb{f}: \mathbb{F}^{n_1} \rightarrow \mathbb{F}^{n_k}
$$

Take $$X \in \mathbb{F}^{n_1}$$ and $$Z \in \mathbb{F}^{n_k}$$ such that $$Z = \mathbb{f}(X)$$. Also,
let $$\mathbb{F}_{0+} \subset \mathbb{F}$$ represent the set of all nonnegative floating point values.

Next, for some $$p \in \mathbb{Z}_+$$, let $$\mathbb{e} : \mathbb{F}^{p} \rightarrow \mathbb{F}_{0+}$$ such that
a first order partial derivative exists for each $$x_i \in \mathbb{F}^p$$ where $$1 \le i \le p$$. For
the case where $$\mathbb{e} : \mathbb{F}^{n_k} \rightarrow \mathbb{F}_{0+}$$, compute $$\mathbb{e}(Z) = e$$
to obtain the error of the neural network.

Finally, for each $$1 \le c \le k-1$$, define the gradient of the error, $$f_c$$,
in the forward pass as:

$$
  \frac{\partial e}{\partial f_c} = \begin{bmatrix}
  \frac{\partial e}{\partial y_1} \\
  \frac{\partial e}{\partial y_2} \\
  \vdots \\
  \frac{\partial e}{\partial y_{n_c}}
  \end{bmatrix} \in \mathbb{F}^{n_c}
$$

### Backwards Dense Layer Function

To update the gradients so our network can truly learn, we need to pass the error back down the layers of the network.

For some $$p, q \in \mathbb{Z}_+$$, for each $$1 \le r \le p$$, and for each $$1 \le s \le q$$,
define a backwards dense layer function $$\ell_d^{-1} : \mathbb{F}^p \rightarrow \mathbb{F}^q \in \mathcal{F}$$ by

$$
  \ell_d^{-1}(\frac{\partial e}{\partial f_c}) = \frac{\partial e}{\partial X}
$$

where

$$
  \frac{\partial e}{\partial X} = \begin{bmatrix}
    \frac{\partial e}{\partial x_1} \\
    \frac{\partial e}{\partial x_2} \\
    \vdots \\
    \frac{\partial e}{\partial x_q}
  \end{bmatrix} \in \mathbb{F}^q
$$

We get $$\frac{\partial e}{\partial x_s}$$ by using the chain rule and in its Leibniz's notation.

$$
  \frac{\partial e}{\partial x_s} = 
    \frac{\partial e}{\partial y_1} \frac{\partial y_1}{\partial x_s} + 
    \frac{\partial e}{\partial y_2} \frac{\partial y_2}{\partial x_s} +
    \cdots +
    \frac{\partial e}{\partial y_p} \frac{\partial y_p}{\partial x_s} 
$$

Using the systems of equations form of a dense layer, we may write this as:

$$
  \frac{\partial e}{\partial x_s} = 
    \frac{\partial e}{\partial y_1} w_{1s} + 
    \frac{\partial e}{\partial y_2} w_{2s} +
    \cdots +
    \frac{\partial e}{\partial y_p} w_{ps} 
$$

To further this, observe

$$
\begin{aligned}
  \frac{\partial e}{\partial X} &= \begin{bmatrix}
    \frac{\partial e}{\partial x_1} \\
    \frac{\partial e}{\partial x_2} \\
    \vdots \\
    \frac{\partial e}{\partial x_q}
  \end{bmatrix} = \begin{bmatrix}
    \frac{\partial e}{\partial y_1} w_{11} + \frac{\partial e}{\partial y_2} w_{21} + \cdots + \frac{\partial e}{\partial y_p} w_{p1} \\
    \frac{\partial e}{\partial y_1} w_{12} + \frac{\partial e}{\partial y_2} w_{22} + \cdots + \frac{\partial e}{\partial y_p} w_{p2} \\
    \vdots \\
    \frac{\partial e}{\partial y_1} w_{1q} + \frac{\partial e}{\partial y_2} w_{2q} + \cdots + \frac{\partial e}{\partial y_p} w_{pq}
  \end{bmatrix} \\
  &= \begin{bmatrix}
    w_{11} & w_{21} & \cdots & w_{p1} \\
    w_{12} & w_{22} & \cdots & w_{p2} \\
    \vdots & \vdots & \ddots & \vdots \\
    w_{1q} & w_{2q} & \cdots & w_{pq}
  \end{bmatrix}
  \begin{bmatrix}
    \frac{\partial e}{\partial y_1} \\
    \frac{\partial e}{\partial y_2} \\
    \vdots \\
    \frac{\partial e}{\partial y_p}
  \end{bmatrix} \\
  &= W^T \cdot \frac{\partial e}{\partial f_c}
\end{aligned}
$$

If we only cared about moving up and down the network, this would be it. However, we also care
about updating the weights and biases of the matrix. These values would be stored and associated
with a particular layer function. This post does not cover that association.
The math below discusses finding the weight matrix and bias vector for updating.

To calculate $$\frac{\partial e}{\partial W} \in \mathbb{F}^{p \times q}$$ expanded as

$$
  \frac{\partial e}{\partial W} = \begin{bmatrix}
    \frac{\partial e}{\partial w_{11}} & \frac{\partial e}{\partial w_{12}} & \cdots & \frac{\partial e}{\partial w_{1q}} \\
    \frac{\partial e}{\partial w_{21}} & \frac{\partial e}{\partial w_{22}} & \cdots & \frac{\partial e}{\partial w_{2q}} \\
    \vdots & \vdots & \ddots & \vdots \\
    \frac{\partial e}{\partial w_{p1}} & \frac{\partial e}{\partial w_{p2}} & \cdots & \frac{\partial e}{\partial w_{pq}}
  \end{bmatrix},
$$

we need to calculate $$\frac{\partial e}{\partial w_{rs}}$$.

$$
  \frac{\partial e}{\partial w_{rs}} =
    \frac{\partial e}{\partial y_1} \frac{\partial y_1}{\partial w_{rs}} +
    \frac{\partial e}{\partial y_2} \frac{\partial y_2}{\partial w_{rs}} +
    \cdots +
    \frac{\partial e}{\partial y_p} \frac{\partial y_p}{\partial w_{rs}}
$$

All but one partial derivative of $$y$$ with respect to a weight returns $$0$$. In this case

$$
  \frac{\partial e}{\partial w_{rs}} = \frac{\partial e}{\partial y_r} x^s
$$

Next, rewrite $$\frac{\partial e}{\partial W}$$ as:

$$
  \frac{\partial e}{\partial W} = \begin{bmatrix}
    \frac{\partial e}{\partial y_1} x_1 & \frac{\partial e}{\partial y_1} x_2 & \cdots & \frac{\partial e}{\partial y_1} x_q \\
    \frac{\partial e}{\partial y_2} x_1 & \frac{\partial e}{\partial y_2} x_2 & \cdots & \frac{\partial e}{\partial y_2} x_q \\
    \vdots & \vdots & \ddots & \vdots \\
    \frac{\partial e}{\partial y_p} x_1 & \frac{\partial e}{\partial y_p} x_2 & \cdots & \frac{\partial e}{\partial y_p} x_q
  \end{bmatrix}
  =
  \begin{bmatrix}
    \frac{\partial e}{\partial y_1} \\
    \frac{\partial e}{\partial y_2} \\
    \vdots \\
    \frac{\partial e}{\partial y_p}
  \end{bmatrix}
  \cdot
  \begin{bmatrix}
    x_1 \,
    x_2 \,
    \cdots \:
    x_q
  \end{bmatrix}
$$

This finalizes to:

$$
  \frac{\partial e}{\partial W} = \frac{\partial e}{\partial f_c} \cdot X^t
$$

To end the dense layer section, we need to find the bias gradient.

First,

$$
  \frac{\partial e}{\partial B} = \begin{bmatrix}
    \frac{\partial e}{\partial b_1} \\
    \frac{\partial e}{\partial b_2} \\
    \vdots \\
    \frac{\partial e}{\partial b_p}
  \end{bmatrix}
$$

Next observe, using the chain rule,

$$
  \frac{\partial e}{\partial b_r} =
    \frac{\partial e}{\partial y_1} \frac{\partial y_1}{\partial b_r} +
    \frac{\partial e}{\partial y_2} \frac{\partial y_2}{\partial b_r} +
    \cdots +
    \frac{\partial e}{\partial y_p} \frac{\partial y_p}{\partial b_r}
$$

All of the terms that don't hold $$b_r$$ become $$0$$.

$$
  \frac{\partial e}{\partial b_r} =
    \frac{\partial e}{\partial y_r} \frac{\partial y_r}{\partial b_r} =
    \frac{\partial e}{\partial y_r}(1) 
    = \frac{\partial e}{\partial y_r}
$$

Finally, the bias gradient really is:

$$
  \frac{\partial e}{\partial B} = \frac{\partial e}{\partial f_c} =
    \begin{bmatrix}
      \frac{\partial e}{\partial y_1} \\
      \frac{\partial e}{\partial y_2} \\
      \vdots \\
      \frac{\partial e}{\partial y_{p}}
    \end{bmatrix}
$$

### Backwards Activation Layer Function

There are no weights or biases to update. In this section, we only need to calculate 
$$\frac{\partial e}{\partial x}$$ to pass down the chain.

Recall from the forward pass:

For some $$p \in \mathbb{Z}_+$$, define an activation layer function, $$\ell_a \in \mathcal{F}$$ such that
$$
  \ell_a: \mathbb{F}^p \rightarrow \mathbb{F}^p
$$

$$
  X = \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix} \in \mathbb{F}^p
$$

and

$$
  \ell_a(X) = \ell_a\left(\begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_p \end{bmatrix}\right)
  = \begin{bmatrix} g(x_1) \\ g(x_2) \\ \vdots \\ g(x_p) \end{bmatrix}
$$

where $$g: \mathbb{F} \rightarrow \mathbb{F}$$ is some first order differentiable function. Next,
pulling the linear systems of equations from earlier, we get:

$$
  \begin{aligned}
    y_1 &= g(x_1) \\
    y_2 &= g(x_2) \\
    &\vdots \\
    y_p &= g(x_p)
  \end{aligned}
$$

So, for each $$1 \le r \le p$$, we have

$$
  \frac{\partial e}{\partial x_r} =
    \frac{\partial e}{\partial y_1} \frac{\partial y_1}{\partial x_r} +
    \frac{\partial e}{\partial y_2} \frac{\partial y_2}{\partial x_r} +
    \cdots +
    \frac{\partial e}{\partial y_p} \frac{\partial y_p}{\partial x_r}
$$

Similarly to the bias in the dense layer, we get

$$
  \frac{\partial e}{\partial x_r} = \frac{\partial e}{\partial y_r} g'(x_r)
$$

Finally, using $$\odot$$ to represent element wise multiplication,

$$
  \frac{\partial e}{\partial X} = \frac{\partial e}{\partial f_c} \odot g'(X)
$$

### Fitting the pieces together

Let $$L^{-1} = \{f^{-1} \in \mathcal{F} \mid f^{-1}$$ is a backwards dense or backwards activation layer function $$\} \subset \mathcal{F}$$.

Next, let $$f^{-1}_1, f^{-1}_2, ..., f^{-1}_{k-1} \in L^{-1}$$ such that

$$
\begin{aligned}
  &f^{-1}_{k-1} : \mathbb{F}^{n_{k-1}} \rightarrow \mathbb{F}^{n_{k-2}} \\
  &f^{-1}_{k-2} : \mathbb{F}^{n_{k-2}} \rightarrow \mathbb{F}^{n_{k-3}} \\
  &\vdots \\
  &f^{-1}_{1} : \mathbb{F}^{n_2} \rightarrow \mathbb{F}^{n_1}
\end{aligned}
$$

To get the final backwards pass, observe

$$
  \mathbb{f}^{-1} = f^{-1}_{1} \circ f^{-1}_{2} \circ \cdots \circ f^{-1}_{k-1}
$$

This should be the backwards pass.

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
