# Walmart Sales Data Analysis (SQL Server)
This project analyzes Walmart's weekly sales dataset to uncover trends, patterns, and insights that can help in decision-making.  
The dataset contains information about store performance, weekly sales, fuel prices, markdown events, and economic indicators.

## 📂 Dataset Attributes
The dataset has the following columns:
- **Store** – Store ID
- **Date** – Week of sales
- **Holiday** – Whether the week includes a special holiday event
- **Temperature** – Average temperature during the week
- **Fuel_Price** – Cost of fuel in the region
- **MarkDown1-5** – Promotional markdowns
- **CPI** – Consumer Price Index
- **Unemployment** – Unemployment rate
- **IsHoliday** – Boolean flag for holidays
- **Weekly_Sales** – Sales revenue for the week

## 📊 Analysis Performed
Using SQL Server, the following analysis queries were executed:
1. Total revenue calculation
2. Average and maximum weekly sales
3. Sales trends by store
4. Sales trends by month and year
5. Impact of holidays on sales
6. Statistical measures (standard deviation, variance)

## 🛠 Tools & Technologies
- Microsoft SQL Server
- SQL Server Import and Export Wizard
- T-SQL Queries

## 📁 Project Structure
sql/
│ ├── 00_create_table_and_prepare.sql # Table creation & data prep
│ └── 01_analysis_queries.sql # Analysis queries
README.md # Project documentation

## 🚀 How to Run the Project
1. Create a database in SQL Server (e.g., `WalmartSalesDB`)
2. Run `00_create_table_and_prepare.sql` to create the table and import data
3. Execute queries from `01_analysis_queries.sql` to analyze the data

## 📌 Key Insights
- Identify high-performing stores
- Seasonal trends and holiday sales impact
- Revenue variation across months and years
- Average and total weekly sales distribution


-

