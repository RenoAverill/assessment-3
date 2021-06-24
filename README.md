# Assessment 3: HTML/CSS/JS and SQL
- **E-commerce Business**

## Important Grading Information
- Make sure you read the [Assessment-3 Grading Rubric](https://docs.google.com/spreadsheets/d/1-YjVU8Wt7qgW8yOImASqB2uYiLBu93dVJuLYjUlEIgk/edit?usp=sharing).
  - Database (60%)...
    - Schema (30%)
    - Seed Data (10%)
    - Queries (20%)
  - Website (40%)...
    - Structure (20%)
    - Look & Layout (10%)
    - Functionality (10%)
- This assessment is worth 15% of your final grade. You need to get a 75% or better to pass. (You must pass all assessments in order to graduate Code Platoon's program.)
- If you fail the assessment, you have can retake it once to improve your score. For this assessment... 
  - *5% penalty*: If you complete and submit the retake **within one week** of receiving your grade.
  - *10% penalty*: If you complete and submit the retake **by 8:30am, July 12th, 2021** (end of the middle week break). A retake for this assessment WILL NOT be accepted after this date.

## Rules / Process
- This test is fully open notes and open Google, but is not to be completed with the help of any other student/individual.
- Do not open a pull request against this repository. We will evaluate your code individually with you.

## Requirements
- This assessment must be completed using raw SQL on your back-end.
- You may use either SQLite3 or PostgreSQL for your database.
- This assessment must be completed using HTML, CSS, Bootstrap, and vanilla JS on your front-end.

## Challenge
E-commerce business continues to grow in our digital age. For this challenge, we want you to develop two disconnected components of a full-stack application for an e-commerce company:
- A back-end database
- A front-end HTML site

### Part I: Back-end Database
Your database should be designed to store customer, product, category, and order information. We are going to ask you to complete the following three items:
- database/schema.sql:
  - SQL containing the schema design for your database (tables and relationships)
- database/seeds.sql:
  - SQL containing the seed data to populate your database tables
- database/queries.sql:
  - SQL containing queries to extract the following data from your database tables:
  1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
  2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
  3. Retrieve all product details for products that are under the "Kitchen" category
  4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"

### Part II: Front-End Website
Your e-commerce website should be structured using HTML, designed using CSS/Bootstrap, and made functional via vanilla JavaScript. This website should feature multiple pages, which should include:
- **Home page** (index.html)
  - This page should show just a basic intro and other common basic home page content
- **Category pages**
  - There should be a separate page for each of the various product categories (e.g. "Home", "Kitchen", "Bed & Bath", "Office", etc...)
  - These pages should show various (at least 3 per category) products with images, names, and prices. 
    - NOTE: You can hard code these products for each page. You do not need to make it dynamic (i.e. do not need to use JavaScript to present product information) 
  - These pages should allow users to add products to their virtual shopping cart
- **Shopping Cart page**
  - This page should show all of the items that were added to the user's shopping cart

Additionally, your site should:
  - Include appropriate site navigation between all pages
  - Include some basic styling using CSS
    - BONUS: Include some Bootstrap components (other than Button)
  - Implement shopping cart functionality using JavaScript and persist data using your browser's localStorage object.
    - NOTE: You do not need to worry about showing item quantities, removing items, or anything else really, other than just displaying items that were added to the cart
    - BONUS: Include aggregated quantities and total price of shopping cart items
  
All website files should be placed within the "website/" folder.