# Missing Value Imputation and Deep Transfer Learning Network

This repository contains source codes for the paper **Analysis of Papillary Thyroid Carcinoma Metastasis Using Missing Value Imputation and Deep Transfer Learning Network**. This paper had been accepted by 2021 IEEE-IUS (2021 IEEE International Ultrasonics Symposium).

Missing values, diversified data types and insufficient sample size have become obstacles to clinical data analysis. In this paper, we proposed a novel machine learning pipeline aiming to make full use of medical data. Missing value imputation via MICE, image analysis via deep learning and feature fusion via SVM were applied to predict the metastasis of Papillary Thyroid Carcinoma. Due to the privacy policy, data set is not  available in this repository.

This repository contains the code on data preprocessing, model training and result visualization. Please refer to the article for details.

- [Missing Value Imputation and Deep Transfer Learning Network](#missing-value-imputation-and-deep-transfer-learning-network)
  - [Data Preprocessing for Clinical Features](#data-preprocessing-for-clinical-features)
  - [Deep Learning Model for Image analysis](#deep-learning-model-for-image-analysis)
  - [SVM for Feature Fusion](#svm-for-feature-fusion)
  - [Visualization](#visualization)


## Data Preprocessing for Clinical Features
* [summary](summary.R) used to summarize the clinical features;
* [dummy](dummy.R) used to convert categorical variable to dummy variable;
* [impute](impute.R) used to impute the missing value;
* [heatmap2](heatmap2.R) used to visualize the heat map and cluster analysis of the clinical features.
  
## Deep Learning Model for Image analysis
* [resnet50_basic_cv](resnet50_basic_cv.ipynb) build a ResNet-50 model;
* [get_prediction](get_prediction.ipynb) calculate statistic indicators to evaluate the deep learning model.

## SVM for Feature Fusion
* [SVM](SVM.ipynb) build a SVM classifier.

## Visualization
* [gradcam](gradcam.py) visualize deep learning model via heat maps;
* [roc_curves](roc_curves.ipynb) visualize our result with ROC curves.




