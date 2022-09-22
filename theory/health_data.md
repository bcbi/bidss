@def title = "Health Data"
@def hascode = true
@def date = Date(2022, 01, 28)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["health data"]

# Health Data

\toc

#### Introduction

~~~ 
<div class="home-box">
    <img class="data-img" src="/assets/data/data.png"> </img> 
</div> 
~~~ 

#### Working with health data

The following section is adapted from Wu et al.[1].

- Data extraction
  - Health data is stored as a database
- Data cleaning/cleansing/scrubbing
  - These steps are performed over the entire database:
    - Address errors, inconsistencies, redundancies
    - Standardize inconsistent coding schemes, and units, and spellings
    - Combine data and variables that were mistakenly spread to different tables
  - Ideally, data should be in a tidy format:
    - Each variable has 1 column
    - Each observation has 1 row
    - Each cell has 1 value
  - Exercise caution with heuristic algorithms for data cleaning!
    - For example, suppose you assume any decrease or unexpected increase in height is always an error. You might be excluding a valid and interesting minority of cases in order to focus on the mundane! This can increase bias in the dataset.
- Data preprocessing
  - These steps are performed once for each research project:
    - Summarize and extract useful features (e.g., feature engineering and dimension reduction)
    - Impute missing data
      - Keep in mind that data may be missing different reasons, possibly correlated with some feature
    - Combine redundant information
  - However, this is an iterative process:
    - Make incremental changes
    - Document any changes and observations
  - Dimension reduction
    - Variable grouping or clustering
      - Which hierarchical medical code to use
    - Principal Component Analysis
      - Explain most of the variance with a small portion of the data
    - Embedding and deep learning
      - Embedding turns binary and categorical variables into continuous feature vectors
- Data preparation
 - These steps might be done multiple times within a project:
   - Combine or separate overlapping time intervals
   - Define, classify,  and label patients by different outcomes
   - Define encounters and time intervals to prepare for analyses
   - Prepare for different scenarios, such as sensitivity analysis
- Data visualization
  - This can help for checking the validity of your approach
- Select appropriate model
- Data types, many missing, highly correlated, errors and uncertainty
  - Predict future event based on current data
  - Estimate value based on data (filtering out noise)
- Result validation
  - Reduce bias and confounding
  - Split your data into testing and validation sets, or use different data sources
- Result interpretation
  - Domain clinical and epidemiological experts should work together carefully
- Publication and dissemination

[1]: Ed. Hulin Wu et al. Statistics and machine learning methods for EHR data: from data extraction to data analytics. CRC Press 2021; ISBN 978-0-367-44239-2

#### Key Readings

~~~ 
<div class="home-box">
    <ul style=“list-style-type:square”>

        <li> Weber GM, Mandl KD, Kohane IS. <a href="https://pubmed.ncbi.nlm.nih.gov/24854141/" target="_blank"> Finding the missing link for big biomedical data. </a> JAMA. 2014 Jun 25;311(24):2479-80. </li>
        <li> Sayers EW, Beck J, Bolton EE, et al. <a href="https://pubmed.ncbi.nlm.nih.gov/33095870/" target="_blank"> Database resources of the National Center for Biotechnology Information. Nucleic Acids Res. </a> 2021 Jan 8;49(D1):D10-D17. doi: 10.1093/nar/gkaa892. PMID: 33095870; PMCID: PMC7778943. </li>
        <li> Blewett LA, Call KT, Turner J, Hest R. <a href="https://pubmed.ncbi.nlm.nih.gov/29272166" target="_blank"> Data Resources for Conducting Health Services and Policy Research. Annu Rev Public Health. </a> 2018;39:437–452. doi:10.1146/annurev-publhealth-040617-013544
        <li> Johnson AE, Pollard TJ, Shen L, et al. <a href="" target="_blank"> MIMIC-III, a freely accessible critical care database. Sci Data. 2016;3:160035. Published 2016 May 24. doi:10.1038/sdata.2016.35 </li>
        <li> Johnson AE, Stone DJ, Celi LA, Pollard TJ. <a href="https://pubmed.ncbi.nlm.nih.gov/29036464" target="_blank"> The MIMIC Code Repository: enabling reproducibility in critical care research. </a> J Am Med Inform Assoc. 2018;25(1):32–39. doi:10.1093/jamia/ocx084 </li>
        <li> <a href="https://www.ncbi.nlm.nih.gov/books/NBK543630/" target="_blank"> Secondary Analysis of Electronic Health Records [Internet]. </a> Cham (CH): Springer; 2016. Available from: https://www.ncbi.nlm.nih.gov/books/NBK543630/ doi: 10.1007/978-3-319-43742-2 </li>
</div> 
~~~ 
