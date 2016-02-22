# Games - Models & SQL

We'll manage a collection of games.

## Step 1 - SQL

### Design

- We should have a Game that has a name, ranking and category.
- Category is a separate model. It has a name.

So:
- a Category has many games
- a Game belongs to a Category

=> Use db.lewagon.org to create a diagram (CDM Conceptual Data Model) of your tables


### Insert

- Create a database (touch db/games-sql.db) and open it (sqlite3 db/games-sql.db)
- Create the tables you designed on db.lewagon.org

- Insert 2 categories
- Insert 3 games linked to the first category

### Queries

- Change the ranking to the third game
- Remove the second game
- Find all the categories
- Find all the game names and their associated category name
- Find the game names that are associated to the second category

- [tricky] Return the average ranking of all the games



## Step 2 - Ruby

For this assignment, we'll just use the Game table and its category will just be a String.
Run you program with `ruby app.rb`

### SQL

- Create a database (touch db/games-ruby.db) and open it (sqlite3 db/games-ruby.db)
- Create the table for Game model

REMINDER: the category here is just a STRING

### Model

- Create a Game class that has the properties listed above

### All games

- Create a Game.all class method that returns all the Games.
- It should return an array of Game instances.

### One Game

- Create a Game.find class method that returns only one Game based on the given id.
- It should return an instance of Game.

## Save

- Create a Gane#save instance method that saves a Game.
- It should update the fields if the Game is already saved.
- It should insert the a new row if the Game is not saved yet.

Interface example:

```
  gta = Game.new(name: "GTA", category: "action", ranking: 1)
  # => #<Game @id: nil, @name: "GTA", @category: "action", @ranking: 1)

  gta.save
  # => #<Game @id: 1, @name: "GTA", @category: "action", @ranking: 1)

  gta.ranking = 5
  gra.category = "cars"
  gta.save
  # => #<Game @id: 1, @name: "GTA", @category: "cars", @ranking: 5)
```
