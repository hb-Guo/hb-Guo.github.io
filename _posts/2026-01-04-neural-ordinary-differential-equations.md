---
title: "神经常微分方程——Neural ODEs"
date: 2026-01-04
author: "Guo Haobing"
header-img: ""
tags: [神经常微分方程]
categories: [基础知识]
permalink: /posts/2026/01/neural-ordinary-differential-equations/
excerpt: "以ResNet为例说明离散常微分方程 残差网络的每一层可表示..."
---
## 以ResNet为例说明离散常微分方程

残差网络的每一层可表示为：

$$
h_{t+1}=h_t+f(h_t,\theta_t)
$$

其中， $h_t$ 是第 $t$ 层的状态， $f(h_t,\theta_t)$ 表示该层的变换， $\theta_t$ 即参数。

进一步变形公式，得：

$$
h_{t+1}-h_t=f(h_t,\theta_t)
$$

在极端情况下，让ResNet的层数趋近于无穷多，每层的变化趋近于无穷小。即 $\Delta t \rightarrow 0$，得

$$
\frac{h(t+\Delta t)-h(t)}{\Delta t}=f(h(t),t,\theta)
$$

对其取极限 $\lim$ ，得：

$$
\lim_{\Delta t \rightarrow 0} \frac{h(t+\Delta t)-h(t)}{\Delta t} = \frac{d h(t)}{dt} = f(h(t),t,\theta)
$$

即一阶常微分方程。输入为初值 $h(0)$，输出为某个时间 $T$ 得解 $h(T)$，**$f$**不再是函数，而是状态 $h$ 随时间 $t$ 变化得“场”。

## 前向传播

训练好的 Neural ODE 进行预测的过程，本质上就是求解：

$$
h(T) = h(0) + \int_{0}^{T} f(h(t), t, \theta) dt
$$

在实际计算中，我们不再手动堆叠层，而是调用**数值积分器**来计算从 $t=0$ 到 $t=T$ 的演化结果。

## 反向传播

Neural ODE 不需要存储所有中间层得激活值，利用优化控制理论中的**伴随状态方程**进行求解。（**NODE不需要反向传播**）


假设损失函数为 $L(h(T))$，为了更新参数 $\theta$，需要计算梯度 $\frac{\partial L}{\partial \theta}$。

我们定义**伴随状态** $a(t) = \frac{\partial L}{\partial h(t)}$（这其实是偏导数随时间的变化）。

数学证明可以得出，$a(t)$ 满足另一个 ODE（称为伴随方程）：

$$\frac{da(t)}{dt} = -a(t)^\top \frac{\partial f(h(t), t, \theta)}{\partial h}$$

**这意味着：**
- **前向传播**：解一个 ODE 得到输出。
- **反向传播**：从 $t=T$ 倒着解另一个 ODE 得到梯度。
- **优点**：不需要存储中间值，显存占用是常数级 $O(1)$。

## 几何解释

从高数微积分的视角看：
*   **传统神经网络**：像是一级一级的阶梯，你必须一步一步跨过去。
*   **Neural ODE**：像是一个平滑的滑道。数据 $h(0)$ 像是一个点，沿着神经网络 $f$ 定义的“流”平滑地滑动到 $h(T)$。

Neural ODE 是：
1. 将神经网络的**层数连续化**。

2. 将前向传播看作是执行**数值积分**（求解初值问题）。

3. 将反向传播转化为求解**伴随微分方程**。

**普通神经网络是 Neural ODE的离散特例，Neural ODE是连续的动力学建模系统，而普通神经网络是离散的**

## 应用场景

1. 若数据遵循物理规律，则使用ODE相当合适。
2. 若数据的采样间隔是不定时，不规则的时间序列，则使用ODE是非常契合的
3. 需要低时间复杂度的情况
4. 图论中的连续扩散过程，解决过平滑问题。
5. 若系统状态是随某个连续变量（如时间、深度、强度）平滑变化的，或者需要在极低内存下运行极深模型。
