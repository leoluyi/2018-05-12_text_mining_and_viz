autoscale: true
footer: © leoluyi, 2018
slidenumbers: true

# Text Mining and Data Viz

### 2018-05-12<br/>[leoluyi](https://github.com/leoluyi/)@iii

### [`https://goo.gl/uLgwSe`](#)

---

## 關於我

- 呂奕 [Leo Lu](https://github.com/leoluyi)
- 台大工管
- 目前於金融業服務
- Build data products
    - ETL
    - Models
    - Text mining
    - Viz
    - ...

![right](img/reptile.jpg)

---

# Text Minning

## _流程_ 與 _工具們_

---


## 舊時代的工具 <br/>vs.<br\>新世代的工具

--- 

## 以前我們都用_外國人_寫的東西

## `tm` + `tmcn`<br/>`Rwordseg`

---

![](img/red.jpg)

### 但是這些套件往往在_中文_
# 會有未知的雷

---

![](img/tools.jpg)

## 今天我們要用一些新的_工具_

---

![](img/red.jpg)

## 流程

### Get data ➜ Tokenize ➜ Embedding ➜ Viz ➜ Model

---

![fit right](img/ptt-cover.jpg)

## *PTT* 是宅宅的好朋友

[.footer: _Get data_ ➜ Tokenize ➜ Embedding ➜ Viz ➜ Model]

---

## 每天都有很多很多的~~廢文~~語料

---

![right](img/reptile.jpg)

## 自己的爬蟲自己寫

### `devtools::install_packages("leoluyi/PTTr")`

---

# Get data

---

![right](img/red.jpg)

# Tokenize

## Transform whole text into parts (of distributions)

---

![right fit filtered](img/work.png)

## For English

- normalization
    - stemming (詞幹提取)
    - lemmatization (詞型還原)
- POS tagging
- ...

---

![right fit filtered](img/work.png)

## 中文似乎比較簡單

- 斷詞
- 不斷詞
- POS tagging
- ...

---

![right fit](img/work.png)

## R tools

- `stringr`
- `jiebaR`

---

# Embedding
## (Encode, Feature Extraction)

---

## Embedding

> In a nutshell, Word Embedding turns _text_ into _numbers_.

- Embedding Layer[^1]
- Word2Vec
- GloVe
- doc2vec
- [sense2vec](https://explosion.ai/demos/sense2vec)

[^1]: https://machinelearningmastery.com/what-are-word-embeddings/

---

![fit](img/Word2Vec-Training-Models.png)

---

![right fit](img/find.png)

## Demo

### Information Retrieval

---

![right fit filtered](img/work.png)

# Visualize

- Dimension Reduction
    - t-sne
    - PCA
- Clustering
- Interactive or static plots

---

![right fit](img/work.png)

# Visualize

- `tsne::tsne()`
- `prcomp()`


---

# Model

---

![right fit](img/work.png)

## Tasks

- Classification
    - 文本分類
- Clustering
    - 找尋相似文本
- Generative models
    - 文本自動生成

---

## 用到最後都會想要寫自己的 toolkit

- Sparse Matrix manipulation
- Informaiton retrieval tools
- ...

---

# 謝謝

