---
title: "Automated Detection of Fin Whales with Distributed Acoustic Sensing in the Arctic and Mediterranean"
authors:
- Khanh Truong
- Jo Eidsvik
- Robin Andre Rørstadbotnen
- Jan Petter Morten
- Laurine Andres
- Anthony Sladen
date: "2025-12-29"
doi: "10.1121/10.0041855"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-01-02T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

publication: "In *The Journal of the Acoustical Society of America*"
publication_short: "In *JASA*"

abstract: "The fin whale is a key species in marine ecosystems and a sensitive indicator of ocean health. Yet monitoring its low-frequency calls at scale remains challenging. Distributed acoustic sensing (DAS) on subsea fiber cables can record thousands of calls daily, but these are hidden in terabytes of data, demanding automated detection. This study presents a three-stage pipeline: (i) data enhancement using frequency-wavenumber and root-mean-square filtering; (ii) call detection in the time-space domain using four approaches: line-based detection (Hough transform, HT), density-based clustering (DBSCAN), template matching combined with clustering (TM), and a deep-learning-based detector (YOLO); and (iii) detection refinement using hyperbola fitting and a LightGBM classifier. The pipeline is evaluated on datasets from two submarine cables: 135 km in Svalbard, Norway, and 162 km between Monaco and Italy. YOLO achieves the highest F1 score (0.89) on the Svalbard dataset, outperforming HT (0.57), DBSCAN (0.43), and TM (0.71). Without fine-tuning, YOLO also achieves a high F1 score (0.80) on the Monaco–Italy dataset, demonstrating robust generalization across geographic locations and seafloor environments. These results highlight DAS combined with deep learning as a powerful tool for scalable, real-time monitoring of marine mammal vocalizations."

tags:
- DAS
- Whales
featured: true

# Links (optional)
url_pdf: '2025-12-whale-article.pdf'
url_code: 'https://zenodo.org/records/17979619'
url_dataset: 'https://doi.org/10.18710/Q8OSON'
url_project: ''
url_slides: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg` or `featured.png` to your page's folder. 
image:
  caption: ''
  focal_point: "Smart"
  preview_only: false

# Associated Projects (optional).
---