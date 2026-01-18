---
layout: post
title: "De Morgan's Law Proof"
math: true
date: 2026-01-16
---

This is question 9 on page 15 in Chapter 1 of James R. Munkers' `Topology 2nd Edition` textbook.

## Formulation

The first part of the question asks us to formulate De Morgan's Laws.

The book reads: *The complement of the union equals the intersection of the complements*
and *the complement of the intersection equals the union of the complements*.

Looking at this in a symbolic form:

$$
X - \bigcup_{\alpha}U_{\alpha} = \bigcap_{\alpha}(X - U_{\alpha})

\qquad

\mathrm{and}

\qquad

X - \bigcap_{\alpha}U_{\alpha} = \bigcup_{\alpha}(X - U_{\alpha})
$$

Where $X$ is any set, $U$ is any subset of $X$, and $\alpha$ be any element of an arbitrary
indexing set.

## Proof

### Proving $X - \bigcup_{\alpha}U_{\alpha} = \bigcap_{\alpha}(X - U_{\alpha})$

Suppose $x \in X - \bigcup_{\alpha}U_{\alpha}$. $x \in X$ and $x \notin U_\alpha$ for any $U_\alpha$
by definition of the union. Because $x$ does not exist in any $U_\alpha$, we can write
$(x \in X$ and $x \notin U_\alpha) $ and $ (x \in X$ and $x \notin U_\beta) $ and $ (x \in X$ and $x \notin U_\phi) $ and $...$ for
some arbitrary values in the indexing set of $\alpha$. By definition of the intersection, can conclude $x \in \bigcap_{\alpha}(X - U_{\alpha})$.


$$
X - \bigcup_{\alpha}U_{\alpha} \subseteq \bigcap_{\alpha}(X - U_{\alpha})
$$

Suppose $x \in \bigcap_{\alpha}(X - U_{\alpha})$. Therefore, $x \in X$ and $x \notin U_\alpha$ for
every $\alpha$. If $x \notin U_{\alpha}$ for every $\alpha$, then by definition of the union,
$x \notin \bigcup_{\alpha}U_{\alpha}$ for every $\alpha$. It follows that $x \in X - \bigcup_{\alpha}
U_{\alpha}$ for every $\alpha$.

$$
\bigcap_{\alpha}(X - U_{\alpha}) \subseteq X - \bigcup_{\alpha}U_{\alpha}
$$

Since these to sets are subsets of each other, it is safe to say:

$$
X - \bigcup_{\alpha}U_{\alpha} = \bigcap_{\alpha}(X - U_{\alpha})
$$

### Proving $X - \bigcap_{\alpha}U_{\alpha} = \bigcup_{\alpha}(X - U_{\alpha})$

Suppose $x \in X - \bigcap_{\alpha}U_\alpha$. $x \in X$ and $x \notin U_{\alpha}$ for all $U_\alpha$ by the definition
of the intersection. Because $x$ does not exist in all $U_\alpha$, we can write
$(x \in X$ and $x \notin U_\alpha) $ or $ (x \in X$ and $x \notin U_\beta) $ or $ (x \in X$ and $x \notin U_\phi) $ or $...$ for
some arbitrary values in the indexing set of $\alpha$. By definition of the intersection, can conclude $x \in \bigcup_{\alpha}(X - U_{\alpha})$.

$$
X - \bigcap_{\alpha}U_{\alpha} \subseteq \bigcup_{\alpha}(X - U_{\alpha})
$$

Suppose $x \in \bigcup_{\alpha}(X - U_{\alpha})$. Then, $x \in X$ and $x \notin U_{\alpha}$ for any $\alpha$
by definition of the union. Thus, if $x$ is not in any $U_{\alpha}$, then $x \notin \bigcap_{\alpha}U_{\alpha}$.
Therefore, $x \in X$ and $x \notin \bigcap_{\alpha}U_{\alpha}$ for every $\alpha$. Finally, $x \in X - \bigcap_{\alpha}
U_{\alpha}$.

$$
\bigcup_{\alpha}(X - U_{\alpha}) \subseteq X - \bigcap_{\alpha}U_{\alpha}
$$

Since these to sets are subsets of each other, it is safe to say:

$$
X - \bigcap_{\alpha}U_{\alpha} = \bigcup_{\alpha}(X - U_{\alpha})
$$

## Concluding Remarks

This was a proof of both parts of De Morgan's Law.

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
