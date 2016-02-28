# Series - Models & CSV Repository

## Step 1 - Models

In this exercise we'll play with TV Series.

### Model

- Define a class that will represent a `Serie`.
- It should have a `name`, `year of release` and `number of seasons`.
- We should be able to access to the value of these attributes.

### Interface

- Create an interface that:
  - Instantiate 3 series.
  - Store them in a list.

- Ask the user which is his/her favorite serie.
- Add the serie to the list.

- We should be able to mark a serie as `viewed`.
- Mark one of the series as viewed.

- For each serie that has not been viewed yet, display its information (name, etc.).


## Step 2 - Scraping (advanced)

Let's scrape the series!

We'll enhance the user experience by proposing suggestions for the series he/she wants to add.

### Example

Your program could look like this:

```
> What serie would you like to add?
[the user input] dexter
> Which one is it (choose the number)?
1. Dexter (2006) (TV Series)
2. Dexter's Laboratory (1996) (TV Series)
[the user input] 1
> Successfully added Dexter serie: 8 seasons / released in 2016
```

### Specs

- It should search for `dexter` on IMDb (eg. http://www.imdb.com/find?ref_=nv_sr_fn&q=dexter&s=all).
- It should only show `TV series`.
- when user chooses a serie, your program should pick necessary information from the serie's page (eg. http://www.imdb.com/title/tt0773262/?ref_=fn_al_tt_1) in order to add it to our list of series.


## Step 3 - Repository

Let's save the list of series!
We'll update our code base.

The goal of this exercise is to use a CSV file to store/read our series.

### Reading from CSV file

- When you launch your script, it should read the stored series from the CSV file.

### Writing to CSV file

- Each time you create/update a serie, you should update the CSV file.
