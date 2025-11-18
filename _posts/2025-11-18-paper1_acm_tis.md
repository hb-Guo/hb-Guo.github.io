---
title: "Spatio-temporal Contrastive Learning-enhanced GNNs for Session-based Recommendation."
date: 2025-11-18
permalink: /posts/2025/11/paper1_acm_tis/
categories: [论文阅读]
tags: [ACM Trans. Inf. Syst, GNN, 对比学习, GNN]
excerpt: "空间为主，时间为辅，双试图对齐建模"
---


Zhongwei Wan, Xin Liu, Benyou Wang, Jiezhong Qiu, Boyu Li, Ting Guo, Guangyong Chen, and Yang Wang. 2023. Spatio-temporal Contrastive Learning-enhanced GNNs for Session-based Recommendation. ACM Trans. Inf. Syst. 42, 2, Article 58 (November 2023), 26 pages. [https://doi.org/10.1145/3626091](https://doi.org/10.1145/3626091). Code:[https://github.com/SUSTechBruce/RESTC-Source-code](https://github.com/SUSTechBruce/RESTC-Source-code).

## 基于图的方法

基于图的方法通常将会话重构成图，在图中存在有向循环时，无法准确的将会话关系构造成图

![有向环图]({{ "/images/paper1youxianghuantu.png" | relative_url }})

**空间与时间关系的图建模**

一些方法采用以固定时间间隔的动态子会话图建模方式考虑时间维度的信息，这种方法可能会引入冗余图结构信息。

还有一些方法采用RNN等将会话视为具有相对位置信息的item顺序序列进行用户偏好的捕捉。这种方法通常忽略了item之间复杂的转换关系。

**空间视图与时间视图需要对齐**

一种方法直接进行自适应连接或者交叉注意力方法进行跨视图信息融合，**问题是两者间互知信息少，无法准确融合。**

一种方法采用耦合生成对抗网络(GAN)以学习联合分布，还有使用半监督学习范式获取时空视图中的互补信息。**问题是优化GAN方法的最大-最小目标不稳定，协同训练机制在训练不同视图的潜在表示时面临模式崩溃问题。**

本文的方法采用的是对比学习的方法，采用时间增强器将时间信息进行编码增强，并采用多关系图注意力网络作为空间编码器，同时结合负噪声采样策略，进一步增强模型性能。额外的，由于会话的数据较为稀疏，采取了将全局的协同过滤图作为补充信息以增强图视图的信息。

![文章1结构图]({{ "/images/paper1jiegoutu.png" | relative_url }})
