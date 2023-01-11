# Principles of Data Analytics Assignment 2: SuperStore Sales Analysis

## Project Overview
This project performs a comprehensive analysis of the **SuperStore Sales dataset**, which includes sales, profit, customer segments, product categories, and geographic data. The main goal of the analysis is to uncover insights related to customer segmentation, product category distributions, geographic patterns, and other business trends.

The analysis is done using the **R programming language**, and various data processing, cleaning, and visualization techniques are applied to derive insights from the dataset.

## Dataset
The dataset used in this project is a sample SuperStore sales dataset that includes details on product sales, profits, customers, and geographic data. This dataset can be found at: ![SuperStoreOrders.csv](SuperStoreOrders.csv)

## Data Preprocessing and Cleaning
1.  **Load and Inspect Data:**  
    The dataset is loaded into R, and the variables are inspected for inconsistencies in data types. The variables are then converted to their appropriate data types.

    **Summary of the Data Frame before Data Preprocessing:**
    <p align="center">
    <img src="readme-assets/01 Summary of the Data Frame before Data Preprocessing.png" alt="summary of the data frame before data preprocessing"/>
    <br>
    <i>Figure 1: Summary of the data frame before data preprocessing</i>
    </p>
   
2.  **Data Cleaning:**  
    Unnecessary or irrelevant variables are removed, and missing or inconsistent data points are handled to ensure accurate analysis.

    **Updated Names and Data Types for Columns in Data Frame:**
    <p align="center">
    <img src="readme-assets/02 Updated Names and Data Types for Columns in Data Frame.png" alt="updated names and data types for columns in data frame"/>
    <br>
    <i>Figure 2: Updated names and data types for columns in data frame</i>
    </p>

    **Summary of the Data Frame after Data Preprocessing:**
    <p align="center">
    <img src="readme-assets/03 Summary of the Data Frame after Data Preprocessing.png" alt="summary of the data frame after data preprocessing"/>
    <br>
    <i>Figure 3: Summary of the data frame after data preprocessing</i>
    </p>

3.  **Top 1000 Instances:**  
    After data cleaning, only the top 1000 records are retained for further analysis, ensuring that the dataset remains manageable and focused.

    **Summary of Top 1000 Instances of The Data Frame:**
    <p align="center">
    <img src="readme-assets/04 Summary of Top 1000 Instances of The Data Frame.png" alt="summary of top 1000 instances of the data frame"/>
    <br>
    <i>Figure 4: Summary of top 1000 instances of the data frame</i>
    </p>

## Insights and Visualizations
1.  **Customer Segments & Product Categories:**  
    Customers are grouped based on segments, and the distribution of product categories within each segment is visualized.

    **Bar Chart of The Category Distribution for Each of The Customer Segments:**
    <p align="center">
    <img src="readme-assets/05 Bar Chart of The Category Distribution for Each of The Customer Segments.png" alt="bar chart of the category distribution for each of the customer segments"/>
    <br>
    <i>Figure 5: Bar chart of the category distribution for each of the customer segments</i>
    </p>
    Notice that, the office supplies is the most popular category among all customer segments, followed by technology category. Other than that, consumer segment is the majority of the customer’s segment.

2.  **Top 10 Product Categories:**  
    A ranking of the top 10 most frequently sold product categories based on sales and profit data is presented. The top 10 sub-categories are Binders, storage, art, phones, chairs, paper, furnishings, labels, fasteners, and machines.

    **Bar Chart of The Frequency of Different Sub-Categories:**
    <p align="center">
    <img src="readme-assets/06 Bar Chart of The Frequency of Different Sub-Categories.png" alt="bar chart of the frequency of different sub-categories"/>
    <br>
    <i>Figure 6: Bar chart of the frequency of different sub-categories</i>
    </p>

3.  **Subcategory Insights:**  
    For each product category, the 3 most frequently bought subcategories are identified and visualized. The 3 most frequent-bought sub-categories for furniture are bookcases, chairs, and furnishings. The 3 most frequent-bought sub-categories for office supplies are binders, art, and storage. The 3 most frequent-bought sub-categories for technology are phones, machines, and have same frequency for accessories and copiers.

    **Bar Chart of The Frequency of Sub-Categories in All Categories:**
    <p align="center">
    <img src="readme-assets/07 Bar Chart of The Frequency of Sub-Categories in All Categories.png" alt="bar chart of the frequency of sub-categories in all categories"/>
    <br>
    <i>Figure 7: Bar chart of the frequency of sub-categories in all categories</i>
    </p>

4.  **Geographic Distribution:**  
    A geographic analysis is done to highlight the top 10 countries or regions that contribute the most to sales and customer base. The top 10 countries are United States, France, Australia, Germany, Nigeria, China, Italy, Nicaragua, Spain, and Mexico. 

    **Bar Chart of The Frequency of Countries:**
    <p align="center">
    <img src="readme-assets/08 Bar Chart of The Frequency of Countries.png" alt="bar chart of the frequency of countries"/>
    <br>
    <i>Figure 8: Bar chart of the frequency of countries</i>
    </p>

5.  **Additional Trends and Insights:**

    **a. Bar Chart of The Frequency of Different Markets:**
    <p align="center">
    <img src="readme-assets/09 Bar Chart of The Frequency of Different Markets.png" alt="bar chart of the frequency of different markets"/>
    <br>
    <i>Figure 9: Bar chart of the frequency of different markets</i>
    </p>
    The top 3 markets are APAC, EU, and US.<br><br>

    **b. Bar Chart of The Average Shipping Cost in Different Markets:**
    <p align="center">
    <img src="readme-assets/10 Bar Chart of The Average Shipping Cost in Different Markets.png" alt="bar chart of the average shipping cost in different markets"/>
    <br>
    <i>Figure 10: Bar chart of the average shipping cost in different markets</i>
    </p>
    Notice that the APAC has the highest of average shipping cost, followed by EMEA and LATAM. While US, has the lowest average of shipping cost. <br><br>

    **c. Bar Chart of The Frequency of Different Categories in All Markets:**
    <p align="center">
    <img src="readme-assets/11 Bar Chart of The Frequency of Different Categories in All Markets.png" alt="bar chart of the frequency of different categories in all markets"/>
    <br>
    <i>Figure 11: Bar chart of the frequency of different categories in all markets</i>
    </p>
    Notice that office supplies is the most popular categories in all markets. Some of the market even have the frequency of office supplies equals to double or more of other two categories.<br><br>

    **d. Bar Chart of The Average Profit for All Markets:**
    <p align="center">
    <img src="readme-assets/12 Bar Chart of The Average Profit for All Markets.png" alt="bar chart of the average profit for all markets"/>
    <br>
    <i>Figure 12: Bar chart of the average profit for all markets</i>
    </p>
    According to the chart above, LATAM has the highest profit among all markets, followed by APAC. Notice that, EU market has lowest profit, although its sales is the highest among all market (according to Figure 11). 

## Conclusion
This project provides valuable insights into retail sales, customer segments, product trends, and geographic patterns. The analysis can be useful for business decision-making, such as product planning, sales forecasting, and market expansion strategies.