# Missing Value Imputation and Deep Transfer Learning Network

This repository contains source codes for the paper **The Application of Data Imputation and Deep Learning Network in the Papillary Thyroid Carcinoma Classification** https://ieeexplore.ieee.org/document/9593717. This paper have been accepted by 2021 IEEE-IUS (2021 IEEE International Ultrasonics Symposium).

Missing values, diversified data types and insufficient sample size have become obstacles to clinical data analysis. In this paper, we proposed a novel machine learning pipeline aiming to make full use of medical data. Missing value imputation via MICE, image analysis via deep learning and feature fusion via SVM were applied to predict the metastasis of Papillary Thyroid Carcinoma. Due to the privacy policy, data set is not  available in this repository.

This repository contains the code on data preprocessing, model training and result visualization. Please refer to the article for details.

- [Missing Value Imputation and Deep Transfer Learning Network](#missing-value-imputation-and-deep-transfer-learning-network)
  - [Data Preprocessing for Clinical Features](#data-preprocessing-for-clinical-features)
  - Deep Learning Model for Image analysis
  - SVM for Feature Fusion
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

# Citation Request
If you use our codes in your project, please cite the following paper
```
@INPROCEEDINGS{jiangwx2021dataimpute,
  author={Jiang, Wenxin and Chen, Xiaotong and Lv, Ning and Rao, Miao and Yu, Yanvan and Qiu, Weibao and Li, Jianming},  
  booktitle={2021 IEEE International Ultrasonics Symposium (IUS)},   
  title={The Application of Data Imputation and Deep Learning Network in the Papillary Thyroid Carcinoma Classification},
  year={2021},  
  volume={},  
  number={},  
  pages={1-4},  
  doi={10.1109/IUS52206.2021.9593717},
}
```
