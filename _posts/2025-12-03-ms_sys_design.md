---
title: "MS_SYS_Design(硕士毕业论文系统整合)"
date: 2025-12-03
author: "Guo Haobing"
header-img: ""
tags: [系统设计,硕士毕业,FastAPI,前端,protobuf]
categories: [硕士毕业论文系统整合]
permalink: /posts/2025/12/ms-sys-design/
excerpt: ""
---

**服务器:59.72.109.12**

## 后端

### FastAPI:

```bash
cd ~/openworld/sys
conda activate tf_cpu
fastapi dev main.py
```

## 前端

### Postman测试:

POST方式访问[http://127.0.0.1:8000/run/paperA](http://127.0.0.1:8000/run/paperA)，不传参数。

### Streamlit:

```bash
streamlit run app.py
```

浏览器访问[http://59.72.109.12:8502](http://59.72.109.12:8502)

网页的内容在app.py中修改。

![]({{"../images/2025-12-03-11-38-26.png"|relative_url}})