📊 Customer Behavior Data Analytics Project

🔍 Overview
This project walks through a complete end-to-end data analytics workflow — from raw data to insights and dashboard reporting.
I load and clean the dataset in Python, explore patterns through EDA, run SQL queries for deeper analysis, and build an interactive Power BI dashboard. Finally, I create a report and presentation summarizing the findings.
This project demonstrates practical data skills used in real-world analytics roles.

📂 Dataset

Domain: Customer purchases / shopping behavior

Key fields include:

Customer demographics (age, gender, location)
Purchase history (items, category, spend, frequency)
Subscription + shipping preferences
Review ratings and discounts used

🛠 Tools & Technologies

Programming & Analysis
Python (Pandas, NumPy, Matplotlib, Seaborn)
Jupyter Notebook
Databases
PostgreSQL / MySQL / SQL Server (any supported)
SQLAlchemy (connection layer)
Visualization & Reporting
Power BI (Dashboard)
Gamma (Presentation deck)
Markdown (README / documentation)

🧹 Steps & Workflow
1️⃣ Load the Dataset (Python)

Import dataset into Pandas
Inspect structure (head, shape, dtypes)
Handle missing values
Convert data types where needed

2️⃣ Exploratory Data Analysis (EDA)

Summary statistics
Distribution analysis
Outliers
Correlations and trends
Business-driven questions (e.g., who spends more, which categories perform best)

3️⃣ Data Cleaning

Remove duplicates
Standardize values
Feature transformations
Create new calculated fields (age groups, revenue metrics, etc.)

4️⃣ Load Data into SQL

Create database / table
Insert cleaned dataset into PostgreSQL/MySQL/SQL Server

Run analytical SQL queries:

Top spending customers
Category performance
Average purchase by age group
Discount usage vs revenue

5️⃣ Build Power BI Dashboard

Interactive views for:
Number of customers
Average review rating
Average purchase amount
Sales by age group
Revenue by age group
Sales by category
Filters (subscription status, gender, category, shipping type)

6️⃣ Create Presentation (Gamma)

Objectives
Dataset & process
Insights
Recommendations
Dashboard walkthrough

📊 Dashboard (Preview)
Insert dashboard screenshot here

✅ Key Results & Insights

Some example insights (customize based on your results):
Younger customers have higher purchase frequency but lower average spend.
Accessories category shows high volume but moderate revenue.
Subscription users generate significantly higher lifetime value.
Free shipping increases order count but reduces margin if unmanaged.
These findings can support marketing, retention, and pricing strategies.

▶️ How to Run the Project
1️⃣ Clone the repository
git clone https://github.com/omarterjman/customer-behavior-analysis.git
cd customer_behavior_analysis

2️⃣ Install dependencies
pip install -r requirements.txt

3️⃣ Run the notebook
Open:
customer_behavior_analysis.ipynb

4️⃣ Set up the database
Create a database and update credentials inside the notebook.

5️⃣ Run SQL queries
Execute SQL scripts from the /sql folder.

6️⃣ Open Power BI file
Open:
customer_behavior_dashboard.pbix

📌 What this project demonstrates:
✔ Data cleaning & preprocessing
✔ Exploratory data analysis
✔ SQL for analytical insights
✔ Database integration
✔ Data visualization storytelling
✔ Business-oriented conclusions
