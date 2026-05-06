---
title: "Regularization"
date: 2026-05-06
author: "Guo Haobing"
header-img: ""
tags: []
categories: []
permalink: /posts/2026/05/regularization/
excerpt: "正则化"
---

# 正则化

用来控制模型复杂度、提升泛化能力，防止模型针对训练数据过拟合。

在训练集上误差很小，在测试集上误差很大。正则化的目标是让模型更加的“平滑”。

## 正则化本质

在原本的损失函数上加一个惩罚项：

$$
\mathcal{L}(\theta) = \mathcal{L}_{data}(\theta) + λ \cdot \Omega(\theta)
$$

$\mathcal{L}_{data}(\theta)$表示原始损失函数，$\Omega(\theta)$表示正则项，用于约束模型参数，λ表示正则强度

## 常见的正则化方法

### L2正则化

$$
\Omega(\theta) = \sum_i \theta^2_i
$$

惩罚参数过大，不会让参数变为0，模型更稳定，更平滑

### L1正则化

$$
\Omega(\theta) = \sum_i |\theta_i|
$$

产生稀疏性，一些参数变为0，适合高维数据

### Dropout

训练时随机丢弃一部分神经元

### 数据增强

隐式正则化

### Early Stopping

防止模型继续拟合噪声