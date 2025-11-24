---
layout: single
title: "研究计划"
date: 2025-11-20
author: "Guo Haobing"
header-img: ""
tags: [LLM, 时空预测, 计划]
categories: [研究计划]
permalink: /posts/2025/11/research-plan/
excerpt: "随着城市化进程的不断加速，城市系统日益复杂..."

---

## 研究背景

随着城市的快速发展，各类资源与服务的调配越来越依赖于对城市环境动态的感知与调度。例如电力系统的分配，交通运输系统的流畅运行，突发事件的管控等都离不开对城市动态变化的感知和预测，这些需求促进了时空预测在大量实际场景中的应用[1]。传统的方法采用自回归移动平均（ARIMA），卡尔曼滤波法等对时间序列数据进行拟合，此外，包括逻辑回归，支持向量回归，KNN，随机森林在内的机器学习方法被用于时空预测中。深度学习的发展，也催生出了大量应用于时空预测的模型[1,2]。而时空数据实例往往并不满足独立同分布的要求，即时间和空间信息具有依赖性，导致传统方法的预测准确率较低。

然而，时空数据本质上具有强结构化、高维性和连续性特征——不仅在时间维度上呈现动态演化，在空间维度上也存在复杂的拓扑关系。更重要的是，真实世界中的时空观测数据通常高度稀疏且分布不均，导致大多数现有模型严重依赖特定场景下具有大量标注的数据进行训练，跨场景泛化能力较弱。值得注意的是，当前主流的时空预测模型大多针对单一城市或单一任务设计，缺乏跨区域、跨场景的迁移与适应能力，难以满足实际场景部署中对模型鲁棒性的要求。与此同时，大语言模型（Large Language Model, LLM）在自然语言处理领域展现出强大的泛化能力、上下文推理能力。然而，直接将通用LLM（如DeepSeek、Qwen等）应用于时空预测任务往往效果不佳[4]。其根本原因在于：LLM主要通过离散符号（文本）进行预训练，其内部表征体系缺乏对数值连续性、微分结构、空间拓扑及动态演化规律等时空数据属性的建模能力即LLM所编码的知识与时空数据特征之间存在显著的模态鸿沟。因此，需要构建一种新型的融合框架，既能保留LLM在语义理解与推理方面的优势，又能有效嵌入时空数据特有的结构化、连续性与动态性特征。

### 拟研究的问题：

1. 如何在保留LLM固有的泛化能力与推理能力的基础上，弥合时空数据特征与LLM中已编码的知识的差距？
2. 如何提升基于LLM时空预测模型在跨域及跨城市场景中的泛化能力？
3. 如何针对时空数据的动态特征设计相应的时空提示词，以引导LLM生成针对性的时空预测？
   
## 文献综述

文献[6]提出了STGCN，采用图卷积和时间卷积相结合的结构，直接在图上建模交通数据，从而以更少的参数，更快的训练速度有效地捕捉了时空数据的时空相关性。文献[7]将交通网络当作图上的扩散过程，采用扩撒卷积的方式建模数据的空间依赖性，采用GRU-like结构处理时间依赖性。近年来，大量的工作采用基于Transformer模型来进行时间序列预测，文献[8]提出低时间复杂度的ProbSparse自注意力机制，并结合注意力蒸馏的方式生成未来的时间预测序列。文献[9]将频域分析和Transformer相结合，提出了采用频率增强模块以更有效低捕获时间序列的全局趋势和频率特征。随着LLM的蓬勃发展，最近有研究尝试将LLM及预训练模型引入到时空预测任务中来，借助其推理能力以及prompt机制以融合时空数据中的时空结构信息。文献[3]将时空编码器和prompt微调机制相结合，有效地提升了LLM时空预测模型的通用性。文献[9]提出了“prompt-empowered”的通用城市时空预测模型，采用多场景预训练 + 知识引导prompt的方式来提升LLM时空预测模型的泛化能力。

## 拟研究内容

## 研究时间计划

|时间  |研究内容|预期结果|
|:----:|:----: |:----: |
|第一学年|明确研究问题，掌握与研究方向相关的基础理论知识|预期发表一篇论文，完成文献综述及开题报告|
|第二学年|解决时空数据独有特征与LLM的对齐问题|预期发表一篇论文，完成中期报告|
|第三学年|解决LLM在跨域时空预测中的泛化问题|预期发表两篇论文，完成毕业论文的方法论部分|
|第四学年|完善毕业论文的内容，撰写毕业论文|预期发表一篇论文，完成毕业论文，通过毕业答辩|

## 参考文献

1. Yuan Y, Ding J, Feng J, et al. Unist: A prompt-empowered universal model for urban spatio-temporal prediction[C]//Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining. 2024: 4095-4106.
2. Liu C, Hettige K H, Xu Q, et al. ST-LLM+: Graph Enhanced Spatio-Temporal Large Language Models for Traffic Prediction[J]. IEEE Transactions on Knowledge and Data Engineering, 2025.
3. Li Z, Xia L, Tang J, et al. Urbangpt: Spatio-temporal large language models[C]//Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining. 2024: 5351-5362.
4. Tan M, Merrill M A, Gupta V, et al. Are Language Models Actually Useful for Time Series Forecasting?[C]//The Thirty-eighth Annual Conference on Neural Information Processing Systems.
5. Han Q, Yoshikawa A, Yamamura M. Adapting Large Language Model for Spatio-Temporal Understanding in Next Point-of-Interest Prediction[C]//ICASSP 2025-2025 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP). IEEE, 2025: 1-5.
6. Yu B, Yin H, Zhu Z. Spatio-Temporal Graph Convolutional Networks: A Deep Learning Framework for Traffic Forecasting[C]//Proceedings of the Twenty-Seventh International Joint Conference on Artificial Intelligence. International Joint Conferences on Artificial Intelligence Organization, 2018: 3634-3640.
7. Li Y, Yu R, Shahabi C, et al. Diffusion Convolutional Recurrent Neural Network: Data-Driven Traffic Forecasting[C]//International Conference on Learning Representations. 2018.
8. Zhou H, Zhang S, Peng J, et al. Informer: Beyond efficient transformer for long sequence time-series forecasting[C]//Proceedings of the AAAI conference on artificial intelligence. 2021, 35(12): 11106-11115.
9. Yuan Y, Ding J, Feng J, et al. Unist: A prompt-empowered universal model for urban spatio-temporal prediction[C]//Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining. 2024: 4095-4106.