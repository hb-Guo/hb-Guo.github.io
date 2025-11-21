---
title: "Research Plan"
date: 2025-11-20
author: "Guo Haobing"
header-img: ""
tags: [LLM, 时空预测, 计划]
categories: [研究计划]
permalink: /posts/2025/11/research-plan/
excerpt: ""
---

## 研究背景

随着城市的快速发展，各类资源与服务的调配越来越依赖于对城市环境动态的感知与调度。例如电力系统的分配，交通运输系统的流畅运行，突发事件的管控等都离不开对城市动态变化的感知和预测，这些需求促进了时空预测在大量实际场景中的应用[1]。传统的方法采用自回归移动平均（ARIMA），卡尔曼滤波法等对时间序列数据进行拟合，此外，包括逻辑回归，支持向量回归，KNN，随机森林在内的机器学习方法被用于时空预测中。深度学习的发展，也催生出了大量应用于时空预测的模型[1,2]。而时空数据实例往往并不满足独立同分布的要求，即时间和空间信息具有依赖性，导致传统方法的预测准确率较低。

近年来，大模型（LLM）在自然语言处理领域展现出了卓越的性能。而将通用的基于语言的LLM（如Deekseek，千问等）直接应用于时空预测任务中并不能取得优于优于非LLM方法的性能，这些语义预训练模型与时空数据中的数值数据，图结构数据等存在模态差距，导致其难以直接迁移到时空预测任务中[4]，因此需要建立一个能够既保留LLM固有的通用知识和推理能力，又能够有效的融合时空数据独有的特征的时空预测模型。现有的时空预测模型往往依赖于具有丰富标注的时空数据集，而在现实场景中得到的往往都具有高度的稀疏性，这一问题为时空预测任务带来了巨大的挑战。

拟研究的问题：

1. 如何在保留LLM固有的泛化能力与推理能力的基础上，弥合时空数据特征与LLM中已编码的知识的差距？
2. 如何提升时空预测模型在few-shot或zero-shot场景中的泛化能力？
3. 如何构建一个能够将时空数据的领域知识编码到LLM推理中的可解释性时空预测框架？

## 参考文献

1. Yuan Y, Ding J, Feng J, et al. Unist: A prompt-empowered universal model for urban spatio-temporal prediction[C]//Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining. 2024: 4095-4106.
2. Liu C, Hettige K H, Xu Q, et al. ST-LLM+: Graph Enhanced Spatio-Temporal Large Language Models for Traffic Prediction[J]. IEEE Transactions on Knowledge and Data Engineering, 2025.
3. Li Z, Xia L, Tang J, et al. Urbangpt: Spatio-temporal large language models[C]//Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining. 2024: 5351-5362.
4. Tan M, Merrill M A, Gupta V, et al. Are Language Models Actually Useful for Time Series Forecasting?[C]//The Thirty-eighth Annual Conference on Neural Information Processing Systems.