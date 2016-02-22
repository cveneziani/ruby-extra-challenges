# Games - Models & Repositories

We'll manage a collection of games.

## Step 1

### Models

- We should have a Game that has a name, ranking and category.
- Category is a separate model. It has a name.

So:
- a Category has many games
- a Game belongs to a Category

### Interface (app.rb)

- initialize a new category

2.times do
  - initialize a new game
  - associate the game should be linked to the category
end

- store the games into a list

- display the category name of the first game of the list
- display the name of all the games of the category


## Step 2 - Category repository

### Category repository

- create the category repository
- we should be able to:
  - fetch all categories
  - find one category based on its id
  - save a category

### Interface (app.rb)

- comment out the previous code

- manually add 3 categories inside the CSV file

- using the repository, find all the categories and display their names

- initialize 2 categories
- save them with the repository

- using the repository, find the second category (id 2) and display its name


## Step 3 - Game repository

### Game repository

- create the game repository
- we should be able to:
  - fetch all categories
  - find one category based on its id
  - save a category

[Tricky part]

- we should store the id of the category
- when loading the CSV file:
  - we read the category id
  - we have to find the corresponding instance
  - then we initialize the game
  - and link back the category instance to the game

### Interface (app.rb)

- comment out the lines that create new categories

- manually add 2 games inside the CSV file
- they should be linked to one of the existing (already saved) categories

- using the repository, find all the games and display their names and category name

- initialize 1 game
- link it to an existing category (we should always link with existing categories)
- save it with the repository

- using the repository, find the second game (id 2) and display its name and category name
