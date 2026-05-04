---
layout: post
title: "Pearl DAG Statement Proof"
math: true
date: 2026-05-03
---

This is a proof of a statement on page 44 in Chapter 1.2.1 of Judea Pearl's `Causality 2nd Edition` textbook.

## Question

Pearl claims that "Every DAG has at least one root and at least one sink." This requires a formal proof.

## Terminology to the question

Given a graph $$G$$:

A root node in $$G$$ is a node that has no parents. A sink node in $$G$$ is a node that has no children.

The set of all nodes of $$G$$ is named $$V$$. The set of all edges of $$G$$ is named $$E$$.

A singular node may be described as $$v \in V$$. A singular edge may be described by $$(v, w) \in E$$ where $$w \in V$$.

### Properties of a Directed Graph

A directed graph may include directed cycles such as $$x \rightarrow y$$ and $$y \rightarrow x$$ but **not**
$$x \rightarrow x$$.

## Proof

To rephrase this claim, if a graph $$G$$ is a DAG with a finite amount of nodes, then there exists at least one root
node and at least one sink node.

The contrapositive of this statement is: If $$G$$ is some directed graph with no root nodes, no sink nodes, and a finite
amount of nodes, then $$G$$ is not a DAG.

To begin this proof by contraposition, suppose $$G$$ is a directed graph with no root nodes, sink nodes, and has a finite
amount of nodes. Let $$v \in V$$ represent a node of $$G$$. Because $$v$$ cannot be a root node, there must exist
some node $$w \in V$$ such that $$w$$ is a parent of $$v$$ such that there exists some directed edge $$(w, v) \in E$$
from $$w$$ to $$v$$. Next, because $$v$$ cannot be a sink node, the node $$v$$ must have at least one child $$u \in V$$
such that there exists a directed edge $$(v, u) \in E$$ from $$v$$ to $$u$$.

Finally, since the relationship described for $$v, w,$$ and $$u$$ in the previous paragraph holds for any node in $$G$$,
the graph $$G$$ is not a DAG.

By proving the contrapositive of the original conditional, the statement: if $$G$$ is a DAG with a finite amount of nodes,
then there exists at least one root node and at least one sink node is true, concluding the proof.

<!-- end of proof symbol -->

$$\tag*{$\blacksquare$}$$

## Additional Question

Can a directed graph with infinite nodes be a DAG? Rephrasing the question above, we get "Every DAG with infinite nodes
has at least one root and at least one sink." This statement is believed to be false by the author; therefore, we seek
to prove the statement "Every directed graph with infinite nodes is not a DAG."

In a provable form: If a graph $$G$$ is a directed graph with infinite nodes, then $$G$$ is not a DAG.

## Proof of infinite DAG problem

To prove the statement above, proceed by contradiction. Suppose $$G$$ is a DAG with infinite nodes. By definition of a
DAG, there must be at least one sink node $$v_n \in V$$ of $$G$$ that has no children. Thus, the set of nodes
$$V = \{v_1, ..., v_n\}$$ of $$G$$. Because there are a finite amount of nodes in $$V$$, we have reached a contradiction,
proving that $$G$$ cannot be a DAG.

<!-- end of proof symbol -->

$$\tag*{$\blacksquare$}$$

## Extras

link to the mathjax LaTeX specification: [https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm](https://treeofmath.github.io/tex-commands-in-mathjax/TeXSyntax.htm)
