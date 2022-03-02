---
title: 'Proof for the graph diffusion equation in GRAND: Graph Neural Diffusion'
date: 2022-03-02
permalink: /posts/graph-diffusion-equation/
tags:
  - graph neural networks
  - diffusion
  - machine learning
  - differential equations
  - graph
---

When I read the GRAND: Graph Neural Diffusion [(arxiv)](https://www.arxiv.org/abs/2106.10934) by Chamberlain et al., I had problems following section 3.1. Graph diffusion equation because the derivation steps of the final equation is not very clear

$$\frac{\partial}{\partial t} \mathbf{x}(t) = (\mathbf{A}(\mathbf{x}(t)) - \mathbf{I})\mathbf{x}(t)$$

Although there is a [slide](https://www.math.fsu.edu/~bertram/lectures/Diffusion.pdf) online about the diffusion equation on graph, the formulation is not identical, so I decided to write a detail post to derive the equation in the GRAND paper.

The divergence for a node $i$ is defined as
$$(div(\mathbf{X}))_i = \sum_{j:(i, j) \in E} \mathbf{X}_{ij} = \sum_{j=1}^n \mathbf{w}_{ij} \mathbf{X}_{ij}

The gradient is defined as $(\nabla \mathbf{x})_{ij} = \mathbf{x}_j - \mathbf{x}_i$

We have the following diffusion equation on the graph.
$$div(G(x(t), t), t) \nabla x(t)) = \sum_{j=1}^{n} \mathbf{w}_{ij} A_{ij} \nabla x(ij)$$
with $G = diag(a(\mathbf{x}_i(t), \mathbf{x}_j(t),t)) - an $e \times e$ diagonal matrix and $a$ is a function determining the similarity (attention?) between the two vertices $\mathbf{x}_i$ and $\mathbf{x}_j$. 

An additional step that needs to be made explicit is 
$$(G(\mathbf{x}(t), t) \nabla \mathbf{x}(t))_u = \sum_{v} G_{uv} \nabla x_{v}$$
Because $G$ is a diagonal matrix, we have that
$$\sum_{v} G_{uv} \nabla x_{v} = G_{uu} \nabla x_u$$
Each index $u$ chosen here represent an edge in the graph, so we can find the two indices $i, j$ of the two vertices corresponding to that graph, the term becomes
$$G_{uu} \nabla x_u = \mathbf{A}_{ij} (\mathbf{x}_j - \mathbf{x}_i)$$ 
Note that $G \in \mathbb{R}^{e \times e}$, $\nabla \mathbf{x} \in \mathbb{R}^{e \times 1}$, $\mathbf{A} \in \mathbb{R}^{v \times v}$
Substituting the above equation into the definition of $div$, we get
$$div(\mathbf{X}_i) = \sum_{j=1}^{n} \mathbf{w}_{ij} \mathbf_{ij} (\mathbf{x}_j - \mathbf{x}_i)$$
If we rearrange the term, the above equation becomes
$$\sum_{j=1}^n \mathbf{w}_{ij} \mathbf{A}_{ij} \mathbf{x}_j - \sum_{j=1}^n \mathbf{w}_{ij} mathbf{A}_{ij} \mathbf{x}_i$$
Shortening the left term while noticing that $\mathbf{w} \odot A$ is right stochastic (that means its sum is $\mathbf{I}$), we get
$$[w \odot \mathbf{A}] \mathbf{x} - \mathbf{x}_i$$
Substitute this into the diffusion equation for a vertex $i$, we have
$$\frac{\partial}{\partial t}\mathbf{x}_i(t) = [w \odot \mathbf{A}] \mathbf{x} - \mathbf{x}_i$$
Vectorize this give us
$$div(\mathbf{x}_i) = (w \odot \mathbf{A}) \mathbf{x} - \mathbf{x}$$
Since $\mathbf{A} > 0$ only when $\mathbf{w} = 1$, we get the equation we want to prove
$$div(\mathbf_{x}_i) = \mathbf{A} \mathbf{x} - \mathbf{x} = (\mathbf{A} - mathbf{I}) \mathbf{X}$$