---
title: "Terra: A Multimodal Spatio Temporal Dataset Spanning the Earth"
date: 2025-11-20
author: "Guo Haobing"
header-img: ""
tags: []
categories: []
permalink: /posts/2025/11/terra--a-multimodal-spatio-temporal-dataset-spanning-the-earth/
excerpt: ""
---

Chen W, Hao X, Wu Y, et al. Terra: A multimodal spatio-temporal dataset spanning the earth[J]. Advances in Neural Information Processing Systems, 2024, 37: 66329-66356. Code:[https://github.com/CityMind-Lab/NeurIPS24-Terra.](https://github.com/CityMind-Lab/NeurIPS24-Terra)

随着遥感卫星系统[32,27]、雷达监测设备[77,65]和各种先进地理观测技术的快速发展，时空数据[16,79]，特别是与地球环境和气候有关的数据，变得越来越容易获得。从这些时空数据中分析和挖掘有价值的知识对于许多现实世界的应用至关重要，包括环境监测[37]、灾害管理[75]、城市规划[40]和气候变化评估[76]。在感官人工智能时代，已经设计了一系列方法，从传统的时间序列和空间统计分析工具【80】到尖端的时空深度学习模型【30】，用于分析和利用特定领域的数据。尽管取得了显著的成就，但主流时空数据挖掘研究[94]与最近转向人工智能通用智能研究[21]之间仍存在巨大差距，后者旨在以统一的方式解决各种挑战，而可推广性和可扩展性挑战仍在于前者。


**文章提出了一种大规模，细粒度，多模态的时空数据集，涵盖整个地球近45年的数据。**

时空数据是指存在于不同尺度上的地理实体数据类型，这些包括空间关系、度量(例如，距离)和非度量(例如，拓扑、流和形状)、时间关系(例如，在数据中显式或隐式地存在)和时空关系(例如，相关性和异质性)。

**时空数据挖掘的挑战**：首先，时空数据通常嵌入在连续空间中，不同于视觉和语言数据中常见的离散空间。其次，与传统的i.i.d.相比，时空数据通常具有很高的自相关性。最后，时空数据具有不同尺度的空间和时间分辨率，并且在有限数据上训练的模型通常缺乏可推广性。

数据集的比较：

![]({{"../images/2025-11-20-14-14-46.png"|relative_url}})

## 数据详细细节——多模态

![]({{"../images/2025-11-20-14-16-59.png"|relative_url}})


## 总结

大规模 多模态 细粒度的数据集，且很新，可以用于以后自己的工作中进行比对。