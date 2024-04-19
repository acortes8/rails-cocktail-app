# Buzzy's Bar

https://www.buzzysbar.com/  

* Ruby version 3.2.2  

* Rails version 7.0.8  

Full-stack web application using Ruby on Rails, hosted on Heroku, with a custom domain from Squarespace. Utilizing AWS S3 for image storage and PostgreSQL for database. Dynamic forms using Turbo-Frames and styled frontend using Bootstrap. Relational database schema with three tables: Cocktail, Ingredients, and CocktailIngredients for managing recipes and their ingredients. CRUD functionality for both cocktails and ingredients, allowing creation, editing, and deletion of recipes and ingredients. Linking between recipes and ingredients enables users to navigate between them effortlessly. Site-wide search bar using the pg_search gem enables users to search for recipes and ingredients with prefix support. Secondary search, named "Buzzy-finder", feature matches users with cocktail recipes based on their available ingredients. Implements a web scraper using Open-URI and Nokogiri to scrape cocktail recipes from an external website's sitemap. Utilizes a parser to extract and format ingredients, among other information, from scraped data to then seed the database with parsed information that matches the database models. Work-in-progress, though with the majority of features already created.  

Skills: Ruby · Ruby on Rails · VScode · WSL2 · Databases · Heroku · AWS S3 · Turbo Frame (Hotwire) · HTML · Cascading Style Sheets (CSS)  






