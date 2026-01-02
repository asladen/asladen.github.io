---
title: Automated detection of fin whales with distributed acoustic sensing in the Arctic and Mediterranean
date: 2025-12-29
summary: New publication in JASA presenting a deep-learning pipeline for detecting fin whale calls using DAS data from the Arctic and Mediterranean.
authors:
  - Khanh Truong
  - Jo Eidsvik
  - Robin Andre Rorstadbotnen
  - Jan Petter Morten
  - Laurine Andres
  - Anthony Sladen
tags:
  - DAS
  - Whales
  - Deep Learning
  - JASA
image:
  caption: ""
  focal_point: "Smart"
---

The Acoustical Society of America (ASA) has published our article, "Automated Detection of Fin Whales with Distributed Acoustic Sensing in the Arctic and Mediterranean," in *The Journal of the Acoustical Society of America* (Vol.158, Issue 6). This work illustrate some of the collaborative work between NTNU and Géoazur. 

**Update:** Our paper was selected for a [Scilight distinction](https://doi.org/10.1063/10.0042177) by the journal editors, highlighting interesting research in the physical sciences!

**Abstract:**

The fin whale is a key species in marine ecosystems and a sensitive indicator of ocean health. Yet monitoring its low-frequency calls at scale remains challenging. Distributed acoustic sensing (DAS) on subsea fiber cables can record thousands of calls daily, but these are hidden in terabytes of data, demanding automated detection. 

This study presents a three-stage pipeline: 
1. Data enhancement using frequency-wavenumber and root-mean-square filtering.
2. Call detection in the time-space domain using four approaches: line-based detection (Hough transform, HT), density-based clustering (DBSCAN), template matching combined with clustering (TM), and a deep-learning-based detector (YOLO).
3. Detection refinement using hyperbola fitting and a LightGBM classifier. 

The pipeline is evaluated on datasets from two submarine cables: 135 km in Svalbard, Norway, and 162 km between Monaco and Italy. YOLO achieves the highest F1 score (0.89) on the Svalbard dataset, outperforming HT (0.57), DBSCAN (0.43), and TM (0.71). Without fine-tuning, YOLO also achieves a high F1 score (0.80) on the Monaco–Italy dataset, demonstrating the ability to generalize across geographic locations and seafloor environments. These results highlight DAS combined with deep learning as a powerful tool for scalable, real-time monitoring of marine mammal vocalizations.

### Resources

*   [**Read the full article (DOI)**](https://doi.org/10.1121/10.0041855)
*   [**Download Article PDF**](Truong_et_al_2025_Automated_detection_of_fin_whales_with_distributed_acoustic_sensing_in_the_Arctic_and_Mediterranean.pdf) ** 
*   [**Download Scilight PDF**](Scilight_2025.pdf)

---
* **This article may be downloaded for personal use only. Any other use requires prior permission of the author and the Acoustical Society of America.