---
layout: post
title:  "NN Weight Replacement"
date:   2025-06-26 16:41:00 -0500
categories: Neural_Networks Genetic_Programming NeuroEvolution
---

## Overview

This is an idea I've had in my head for a long time. The traditional Neural Network contains weights that are
adjusted via backpropagation. What if these weights were simply replaced with genetic programs?

# Neural Networks Portion

My knowlegde on neural networks is limited at the time of writing this, so I am reading through the [nnfs](https://nnfs.io/) book.
So far, I understand there is a weights vector for each layer within a neural network. Are these weights replacable with something else?

# Genetic Programming Portion

I've spent two years experimenting on and off with various genetic programming libraries. Push and DEAP to name drop them.

These equations (like any math equation) convert one number to another.

# Combination

Would it be feasible to replace the weights inside of a neural network with genetic programs directly?
A few questions arise in my mind: how to handle speed constraints, how would replacing back propagation work,
can connections be co-evolved, can nodes be added/subtracted over time, what ideas can be borrowed from the various existing
NeuroEvolution frameworks like NEAT or EXAMM?

# Conclusion

This would culminate well into a thesis I feel. Next step is to learn basic NNs and then start experimenting
with some of the frameworks already available.
