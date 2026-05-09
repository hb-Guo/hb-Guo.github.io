---
title: "GCD_papers"
date: 2026-05-06
author: "Guo Haobing"
header-img: ""
tags: []
categories: [GCD,论文]
permalink: /posts/2026/05/gcd-papers/
excerpt: "广义类别发现论文"
---
# 广义类别发现GCD

确认误差：模型过早、过度相信自己的伪标签，从而把错误不断强化

1. ProtoGCD: Unified and Unbiased Prototype Learning for Generalized Category Discovery

    针对的问题：性能不平衡、表征偏置、确认偏差

    核心部分的DAPL算法主要针对的是模型在初期阶段难以进行准确的聚类，盲目确定伪标签会导致模型引入确认偏差，影响模型性能。

    **如何在统一的学习目标下，消除旧/新类之间的建模不对称性**

    旧类和新类的原型都采用随机初始化，防止只对旧类原型进行直接定义而引入不平衡的先验（可学习式原型）

    **最核心的创新：将样本最近的原型和次近的原型的指数相似度比作为样本的置信度，纯粹的衡量样本的边界模糊度**