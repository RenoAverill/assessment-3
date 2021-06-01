# Assessment 3: HTML/CSS/JS and SQL
- **E-commerce Business**

## Important Grading Information
- Make sure you read the [Assessment-3 Grading Rubric](https://docs.google.com/spreadsheets/d/1-YjVU8Wt7qgW8yOImASqB2uYiLBu93dVJuLYjUlEIgk/edit?usp=sharing).
- This assessment is worth 15% of your final grade. You need to get a 75% or better to pass. (You must pass all assessments in order to graduate Code Platoon's program.)
- If you fail the assessment, you have can retake it once to improve your score. For this assessment... 
  - 5% penalty: If you complete and submit the retake **by 8:30am, July 12th, 2021** (end of the middle week break).
  - 10% penalty: If you complete and submit the retake afterwards.

## Rules / Process
- This test is fully open notes and open Google, but is not to be completed with other students
- Do not open a pull request against this repository. We will evaluate your code individually with you.

## Requirements
- This assessment must be completed using HTML, CSS, Bootstrap, and vanilla JS on your front-end.
- This assessment must be completed using raw SQL on your back-end.
- You may use either SQLite3 or PostgreSQL for your database.

## Challenge
E-commerce business continues to grow in our digital age. For this challenge, we want you to develop two disconnected components of a full-stack application for an e-commerce company:
- A front-end HTML site
- A back-end database

### Part I: Front-End Website
Your e-commerce website should be structured using HTML, designed using CSS & Bootstrap, and made functional via vanilla JavaScript. This website should feature multiple pages, which should include:
- Home page
  - This page should show just a basic intro and other common home page functionality 
- Category pages
  - There should be a page for each of the various product categories (e.g. "Home", "Kitchen", "Bed & Bath", "Home Office", etc...), showing products with images, names, and prices. 
  - There should also be the ability for users to add products to their shopping cart
- Shopping Cart page
  - This page should show all of the items that were added to the user's shopping cart
  - This page should allow users to remove items from their cart
  - This page should show the total price of all items in the cart

Additionally, your site should have appropriate navigation between pages, and should be styled using CSS and some Bootstrap elements. Shopping cart functionality should be managed using JavaScript and persisted using your browser's localStorage object. All website files should be placed within the "website/" folder.

### Part II: Back-end Database
Your database should be designed to store customer, product, category, and order information. We are going to ask you to complete three items:
- database/schema.sql:
  - SQL containing the schema design for your database (tables and relationships)
- database/seeds.sql:
  - SQL containing the seed data to populate your database tables
- database/queries.sql:
  - SQL containing queries to extract the following data from your database tables:
    1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
    2. Retrieve the address of the customers and the order ID for all orders that were placed in 2020
    3. Retrieve all product details for products that are under the "Kitchen" category
    4. Retrieve the product names and prices of all products ordered by customer with ID 2
