---
title: "AirGPT: Spatio-temporal large language model for air quality prediction"
date: 2025-11-20
author: "Guo Haobing"
header-img: ""
tags: [LLM, 时空预测, 可解释性，稀疏数据, 零样本学习]
categories: [论文阅读]
permalink: /posts/2025/11/airprec-llm/
excerpt: "用于空气质量预测的LLM"
---

Li Z, Chen T, Xu Y. AirGPT: Spatio-temporal large language model for air quality prediction[J]. Information Fusion, 2025: 103730.Code:[https://anonymous.4open.science/r/AirGPT-6ACC](https://anonymous.4open.science/r/AirGPT-6ACC)

空气污染是21世纪最紧迫的环境和公共健康挑战之一。其后果是普遍的，在全球范围内影响人类福祉、经济稳定和生态平衡。世界卫生组织（世卫组织）估计，大约99%的全球人口暴露在超过其指导阈值的空气污染水平中[1,2]。每年，估计有700万人因严重健康问题的风险增加而过早死亡，包括呼吸道感染、心脏病、中风和肺癌[3]。这些影响不成比例地影响了弱势群体，如儿童、老年人和已有呼吸系统或心血管疾病的人。除了对人类健康的影响之外，空气污染还会带来重大的经济和环境后果。例如，严重的烟雾事件会损害能见度，扰乱交通系统，导致航班取消，并导致旅游部门的巨大损失。在环境方面，二氧化硫和氮氧化物等污染物导致酸雨，对森林、土壤质量和水生生态系统构成严重威胁。

当前方法存在的问题：
1. 对丰富标注数据的依赖。现实世界中，数据往往是稀疏的。
2. 多源信息融合困难。难以有效融合时间，气象及地理数据。
3. 可解释性差。深度学习的黑盒机制。
   
解决的问题依然有**针对数据稀疏性**，利用大模型固有的强大泛化和推理能力。

大模型缺乏针对时空预测的相关领域专有知识，文章采用了深度时空编码技术缓解LLM先验知识引起的误差。

文章提出时空融合指令调参范式，提升可解释性和预测精度-多源数据融合。Through a combination of refined spatio-temporal prompts and Chain-of-Thought (CoT) distillation, this framework guides the LLM to achieve a deeper perception of the environmental context and to adopt a more interpretable and transparent reasoning logic for its predictions.

![]({{"../images/2025-11-20-11-16-44.png"|relative_url}})

模型结构：

![]({{"../images/2025-11-20-11-18-26.png"|relative_url}})


**总结**：相比其他文章更多的针对多源数据融合和可解释性方面做了一些工作，尤其是思维链蒸馏。