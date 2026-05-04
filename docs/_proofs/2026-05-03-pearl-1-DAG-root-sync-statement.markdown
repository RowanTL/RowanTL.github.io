---
layout: post
title: "Pearl DAG Statement Proof"
math: true
date: 2026-05-03
---

This is a proof of a statement on page 44 in Chapter 1.2.1 of Judea Pearl's `Causality 2nd Edition` textbook.

## Question

Pearl claims that "Every DAG has at least one root and at least one sink." This requires a formal proof.

Another assumption of the proof: There are only a finite amount of nodes in said DAG.

## Terminology to the question

Given a graph $$G$$:

A root node in $$G$$ is a node that has no parents. A sink node in $$G$$ is a node that has no children.

The set of all nodes of $$G$$ is named $$V$$. The set of all edges of $$G$$ is named $$E$$.

A singular node may be described as $$v \in V$$. A singular edge may be described by $$(v, w) \in E$$ where $$w \in V$$.

## Proof

To rephrase this claim, if a graph $$G$$ is a DAG, then there exists at least one root node and at least one sink node.

The contrapositive of this statement is: If $$G$$ is some directed graph with no root or sink nodes, then $$G$$ is not
a DAG.

To begin this proof by contraposition, suppose $$G$$ is a directed graph with no root or sink nodes. Let $$v \in V$$
represent a node of $$G$$. Because $$v$$ cannot be a root node, there must exist some node $$w \in V$$ such that $$w$$
is a parent of $$v$$ such that there exists some directed edge $$(w, v) \in E$$ from $$w$$ to $$v$$. Next,
because $$v$$ cannot be a sink node, the node $$v$$ must have at least one child $$u \in V$$ such that there exists
a directed edge $$(v, u) \in E$$ from $$v$$ to $$u$$.

Finally, since the relationship described for $$v, w,$$ and $$u$$ in the previous paragraph holds for any node in $$G$$,
the graph $$G$$ is not a DAG.

By proving the contrapositive of the original conditional, the statement if $$G$$ is a DAG, then there exists at
least one root node and at least one sink node is true, concluding the proof.

<!-- end of proof symbol -->

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
