# Buzzy's Bar (WIP)  

https://www.buzzysbar.com/  

* Ruby version 3.2.2  

* Rails version 7.0.8  

Full-stack web application using Ruby on Rails, hosted on Heroku, with a custom domain from Squarespace. Utilizing AWS S3 for image storage and PostgreSQL for database. Dynamic forms using Turbo-Frames and styled frontend using Bootstrap. Relational database schema with three tables: Cocktail, Ingredients, and CocktailIngredients for managing recipes and their ingredients. CRUD functionality for both cocktails and ingredients, allowing creation, editing, and deletion of recipes and ingredients. Linking between recipes and ingredients enables users to navigate between them effortlessly. Site-wide search bar using the pg_search gem enables users to search for recipes and ingredients with prefix support. Secondary search, named "Buzzy-finder", feature matches users with cocktail recipes based on their available ingredients. Implements a web scraper using Open-URI and Nokogiri to scrape cocktail recipes from an external website's sitemap. Utilizes a parser to extract and format ingredients, among other information, from scraped data to then seed the database with parsed information that matches the database models. Work-in-progress, though with the majority of features already created.   

Skills: Ruby · Ruby on Rails · VScode · WSL2 · Databases · Heroku · AWS S3 · Turbo Frame (Hotwire) · HTML · Cascading Style Sheets (CSS)  

Features:  

Index page for recipes.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/e806cc8e-ea06-45c2-9b16-3fec8dde133b)  

Index page for ingredients.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/5ba1d83c-dbdc-4427-92d9-2b4130f9a6c8)  

Show page for a recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/83059451-6dc3-4afc-b8e9-3020e1d49986)  

Edit page for a recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/f999d7cc-d760-4d5e-ac71-837576f22b2f)  

Creation page for a recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/547ff8e2-d748-4838-a6b6-f0fa8295fd5c)  

Auto-complete using datalist that mirrors the ingredient table of the database when typing in ingredients in a recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/42c0f4f8-2d3e-465a-84fc-bd6d3b454a77)  

When editing, checkmark the box to delete that ingredient from the recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/1e29a270-d21c-4f7d-861e-af4964166cba)  

Show page for an ingredient, showing all recipes it is used in. Clicking on one will take you to that recipe.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/09997fb8-3262-49b8-b317-de0bad8b41f9)  

Buzzy Finder, for finding potential recipes you can make, with the ingredients you have on hand.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/32b61747-16c2-4c2c-aa54-c9e6fafaad3f)  

Searching for recipes I can make if I have Gin and Lemon Juice, using the Buzzy Finder.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/85ced219-89fc-4755-a640-bf49da687a15)  

If you have all the ingredients for a recipe, that recipe will say "Full Match".  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/825af67f-ccd8-495f-9304-234538ab75e9)  

Site-wide prefix search bar for searching for ingredients or recipes.  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/0f3146e3-cc4d-451a-a544-2a280888d63b)  

Search results when searching "Gin"  
![image](https://github.com/acortes8/rails-cocktail-app/assets/46253800/ad1c340a-679b-49ae-aed0-2619b60d0527)  
