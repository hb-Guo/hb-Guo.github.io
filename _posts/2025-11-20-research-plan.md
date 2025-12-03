---
layout: single
title: "研究计划(已作废)"
date: 2025-11-20
author: "Guo Haobing"
header-img: ""
tags: [LLM, 时空预测, 计划]
categories: [研究计划]
permalink: /posts/2025/11/research-plan/
excerpt: "随着城市化进程的不断加速，城市系统日益复杂..."

---

## 研究背景

随着城市的快速发展，各类资源与服务的调配越来越依赖于对城市环境动态的感知与调度。例如电力系统的分配，交通运输系统的流畅运行，突发事件的管控等都离不开对城市动态变化的感知和预测，这些需求促进了时空预测在大量实际场景中的应用 $^{[1]}$ 。传统的方法采用自回归移动平均（ARIMA），卡尔曼滤波法等对时间序列数据进行拟合，此外，包括逻辑回归，支持向量回归，KNN，随机森林在内的机器学习方法被用于时空预测中。深度学习的发展，也催生出了大量应用于时空预测的模型 $^{[1,2]}$ 。而时空数据实例往往并不满足独立同分布的要求，即时间和空间信息具有依赖性，导致传统方法的预测准确率较低。

然而，时空数据本质上具有强结构化、高维性和连续性特征——不仅在时间维度上呈现动态演化，在空间维度上也存在复杂的拓扑关系。更重要的是，真实世界中的时空观测数据通常高度稀疏且分布不均，导致大多数现有模型严重依赖特定场景下具有大量标注的数据进行训练，跨场景泛化能力较弱。值得注意的是，当前主流的时空预测模型大多针对单一城市或单一任务设计，缺乏跨区域、跨场景的迁移与适应能力，难以满足实际场景部署中对模型鲁棒性的要求。与此同时，大语言模型（Large Language Model, LLM）在自然语言处理领域展现出强大的泛化能力、上下文推理能力。然而，直接将通用LLM（如DeepSeek、Qwen等）应用于时空预测任务往往效果不佳 $^{[4]}$ 。其根本原因在于：LLM主要通过离散符号（文本）进行预训练，其内部表征体系缺乏对数值连续性、微分结构、空间拓扑及动态演化规律等时空数据属性的建模能力即LLM所编码的知识与时空数据特征之间存在显著的模态鸿沟。因此，需要构建一种新型的融合框架，既能保留LLM在语义理解与推理方面的优势，又能有效嵌入时空数据特有的结构化、连续性与动态性特征。

### 拟研究的问题：

1. 如何在保留LLM固有的泛化能力与推理能力的基础上，弥合时空数据特征与LLM中已编码的知识的差距？
2. 如何提升基于LLM时空预测模型在跨域及跨城市场景中的泛化能力？
3. 如何针对时空数据的动态特征设计相应的时空提示词，以引导LLM生成针对性的时空预测？
   
## 文献综述

文献[6]提出了STGCN，采用图卷积和时间卷积相结合的结构，直接在图上建模交通数据，从而以更少的参数，更快的训练速度有效地捕捉了时空数据的时空相关性。文献[7]将交通网络当作图上的扩散过程，采用扩撒卷积的方式建模数据的空间依赖性，采用GRU-like结构处理时间依赖性。近年来，大量的工作采用基于Transformer模型来进行时间序列预测，文献[8]提出低时间复杂度的ProbSparse自注意力机制，并结合注意力蒸馏的方式生成未来的时间预测序列。文献[9]将频域分析和Transformer相结合，提出了采用频率增强模块以更有效低捕获时间序列的全局趋势和频率特征。随着LLM的蓬勃发展，最近有研究尝试将LLM及预训练模型引入到时空预测任务中来，借助其推理能力以及prompt机制以融合时空数据中的时空结构信息。文献[3]将时空编码器和prompt微调机制相结合，有效地提升了LLM时空预测模型的通用性。文献[9]提出了“prompt-empowered”的通用城市时空预测模型，采用多场景预训练和知识引导prompt的方式来提升LLM时空预测模型的泛化能力。

## 拟研究内容

时空数据的动态运动和表现形式的变化，如何捕获空间数据的远程空间依赖性？
时空数据中空间结构特征的提取需要使用Unet架构，时间复杂度高

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








稀疏时空数据（Sparse Spatio-Temporal Data）是指在时间和/或空间维度上观测点不足、采样不连续、覆盖不完整的数据，这在城市感知、交通监控、POI签到、环境监测等实际场景中极为常见。这类数据给时空预测任务带来了多重挑战，具体问题及对应的解决方案如下：

一、稀疏时空数据带来的核心问题
1. 表征能力受限：难以准确建模时空依赖
问题描述：模型无法从稀疏观测中可靠地学习空间邻近性（如区域间通勤关系）或时间演化规律（如早晚高峰模式），导致对未观测区域或时段的预测偏差大。
典型表现：在低签到频率区域（如郊区POI）、非高峰时段（如深夜交通流量）预测性能显著下降。
2. 冷启动问题（Cold Start）
问题描述：对于新出现的空间单元（如新建地铁站、新开业商场）或新时间段（如节假日、特殊事件期间），缺乏历史数据支撑，传统模型无法生成有效预测。
影响：严重制约模型在动态城市环境中的实用性与鲁棒性。
3. 过拟合风险高
问题描述：在数据稀疏条件下，模型容易过度拟合有限样本中的噪声或偶然模式，泛化能力差。
后果：训练损失低但测试误差高，尤其在跨城市或跨时间段迁移时表现更差。
4. 评估偏差与指标失真
问题描述：标准评估指标（如MAE、RMSE）在稀疏数据下可能被“零值主导”（大量未观测位置默认为0），掩盖真实预测误差。
例子：若90%区域无观测，模型全预测为0仍可获得较低MAE，但毫无实用价值。

二、针对性解决方案
1. 引入外部知识与先验结构
方法：
利用地理信息（如路网拓扑、土地利用类型、POI类别）构建空间图结构，即使无流量数据也可定义区域间关系；
引入语义先验（如“商业区白天人流密集”、“住宅区夜间活跃”）作为软约束；
使用预训练LLM编码通用城市知识（如“地铁站周边通常有高人流”），弥补局部数据缺失。
技术实现：
构建异构图（Heterogeneous Graph）融合多源信息；
在LLM提示词中注入地理语义（如“该区域为工业区，工作日早8点通常有通勤流入”）。
优势：缓解冷启动，提升未观测区域的推理能力。
2. 基于生成模型的数据增强与补全
方法：
使用时空生成对抗网络（ST-GAN） 或 扩散模型（Diffusion Models） 从稀疏观测中学习潜在分布，生成合理补全数据；
采用矩阵/张量补全（Tensor Completion） 技术（如CP分解、Tucker分解）恢复缺失条目。
案例：MEST-GAN [Zhang et al., ICDM 2022] 利用元学习+GAN实现跨城市的稀疏交通流补全。
注意：需避免生成虚假模式，可结合物理约束（如流量守恒）进行正则化。
3. 设计对稀疏性鲁棒的模型架构
方法：
采用注意力机制中的稀疏化策略（如仅关注高置信度邻居）；
引入不确定性建模（如贝叶斯神经网络、蒙特卡洛Dropout），对低置信度预测输出高方差；
使用对比学习拉近语义相似但观测稀疏的时空状态表示，提升泛化。
创新方向：将LLM的in-context learning能力用于小样本时空推理——通过少量示例引导模型泛化至稀疏区域。
4. 改进评估范式
方法：
采用掩码评估（Masked Evaluation）：仅在真实观测位置计算误差，忽略未观测区域；
引入排序指标（如Recall@K、NDCG）用于POI推荐类任务，避免绝对数值偏差干扰；
设计稀疏感知损失函数（如加权MAE，对高频区域赋予更高权重）。
意义：确保评估结果真实反映模型能力，避免“虚假高分”。
5. 利用大语言模型的常识推理能力
方法：
将稀疏轨迹或POI序列转化为自然语言描述（如“用户早上8点从住宅区A前往CBD B”）；
利用LLM的世界知识推断缺失环节（如“中间可能经过地铁站C”）；
结合检索增强生成（RAG），从知识库中检索相似时空上下文辅助预测。
优势：突破纯数据驱动局限，在极稀疏场景下仍可进行合理推断。

三、综合解决框架建议

一个面向稀疏时空数据的鲁棒预测系统应融合上述策略：

1. 前端：利用地理信息系统（GIS）与开放数据（OSM、POI数据库）构建先验图结构；
2. 中端：采用生成模型对原始稀疏数据进行可信补全，并标注不确定性；
3. 后端：部署具备稀疏感知能力的LLM增强模型（如前述MASTE + DAST-Prompt），结合动态提示与外部知识进行推理；
4. 评估：使用掩码指标与排序指标双重验证，确保结果可靠性。

总结

稀疏性是时空预测落地的核心瓶颈之一。单纯依赖更多数据并非可持续路径，而应通过知识引导、生成补全、架构鲁棒性设计与评估优化四维协同，构建“数据-知识-模型”三位一体的稀疏鲁棒预测范式。尤其在LLM时代，利用其强大的常识推理与语义泛化能力，有望在极稀疏甚至零样本场景下实现有意义的时空预测，这是传统深度学习模型难以企及的新方向。