# Amazon Reviews Analysis

## Purpose 
The purpose of this study is to determine any bias toward favorable reviews from members of the paid Amazon Vine program, given a S3 Amazon review dataset. The dataset contains books that were reviewed by both members of the paid program and non-members of the program. PySpark was used to perform the ETL process to extract the dataset, transform the data, load the transformed data into PostgreSQL tables by connecting to the AWS RDS instance.  

## Results
#### **Helpful votes vs Total votes Ratio greater than 0.50**
![alt tag]( https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/ratio_eq_gt_50.PNG)

#### **Total Reviews**

![alt tag](https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/total_reviews.PNG)

#### **Vine members and non-members Review Totals**

##### **Vine Members Review Totals**

![alt tag]( https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/paid_review_total.PNG)

##### **Vine Non-members Review Totals**

![alt tag]( https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/non_paid_reveiw_total.PNG)

#### **Five Stars Rating Totals**

![alt tag]( https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/total_five_star_reviews.PNG)

#### **Vine Members and Non-members Five Star Rating Ratio**

![alt tag]( https://github.com/fmgribbon/Amazon_Vine_Analysis/blob/main/Resources/five_star_review_ratio.PNG)

## Summary
- There were no reviews from  members of the paid Amazon Vine program. Only non-member reviews were present in the dataset. 
- Insufficient member review data from the review dataset was found during the analysis.
 - Comparison between members and non-member of the program based on review counts could not be done due to the absence of member reviews. Therefore, the existence of any bias towards favorable reviews from  members of the paid Amazon Vine program cannot be determined. 
- Additional member review data must be added to the analysis for this analysis to have meaningful value.  
