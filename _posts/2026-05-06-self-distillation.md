---
title: "Self Distillation"
date: 2026-05-06
author: "Guo Haobing"
header-img: ""
tags: []
categories: []
permalink: /posts/2026/05/self-distillation/
excerpt: "自蒸馏"
---

# 自蒸馏

让模型把从自身学到的知识提炼出来，反哺给自身，不同于传统知识蒸馏模型。

1. 无需教师模型，蒸馏过程可以和训练同步
2. 同架构下也能提升性能，软标签本身具有[正则化作用](2026-05-06-regularization.md)

## 典型做法

### 深层指导浅层

让网络的深分类器当作教师，去指导浅层分类器。

### 时序自蒸馏

Born-Again Networks：训练完一个模型后，用它的预测作为软目标，重新训练一个相同结构的模型，循环多次，准确率能持续小幅提升。

Mean Teacher：训练时维护一个参数的指数滑动平均（EMA）作为教师，在无标签数据上约束学生输出与教师一致。

### 自蒸馏即正则化

模型在同一个前向传播中，对同一输入的不同增广版本做预测，并要求这些预测分布一致。