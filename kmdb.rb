# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.



movie = Movie.new
movie.title = "Batman Begins"
movie.year_released = "2005"
movie.rated = "PG-13"
movie.save

movie = Movie.new
movie.title = "The Dark Knight"
movie.year_released = "2008"
movie.rated = "PG-13"
movie.save

movie = Movie.new
movie.title = "The Dark Knight Rises"
movie.year_released = "2012"
movie.rated = "PG-13"
movie.save


#Christian Bale added to People and Roles
people = Person.new
people.name = "Christian Bale"
people.save
movie = Movie.where({title: "Batman Begins"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Bruce Wayne"
role.save
movie = Movie.where({title: "The Dark Knight"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Bruce Wayne"
role.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Bruce Wayne"
role.save

#Michael Caine added to People and Roles
people = Person.new
people.name = "Michael Caine"
people.save
movie = Movie.where({title: "Batman Begins"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Alfred"
role.save
movie = Movie.where({title: "The Dark Knight"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Alfred"
role.save

#Liam Neeson added to People and Roles
people = Person.new
people.name = "Liam Neeson"
people.save
movie = Movie.where({title: "Batman Begins"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Ra's Al Ghul"
role.save

#Katie Holmes added to People and Roles
people = Person.new
people.name = "Katie Holmes"
people.save
movie = Movie.where({title: "Batman Begins"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Rachel Dawes"
role.save

#Gary Oldman added to People and Roles
people = Person.new
people.name = "Gary Oldman"
people.save
movie = Movie.where({title: "Batman Begins"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Commissioner Gordon"
role.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Commissioner Gordon"
role.save

#Heath Ledger added to People and Roles
people = Person.new
people.name = "Heath Ledger"
people.save
movie = Movie.where({title: "The Dark Knight"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Joker"
role.save

#Aaron Eckhart added to People and Roles
people = Person.new
people.name = "Aaron Eckhart"
people.save
movie = Movie.where({title: "The Dark Knight"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Harvey Dent"
role.save

#Maggie Gyllenhaal added to People and Roles
people = Person.new
people.name = "Maggie Gyllenhaal"
people.save
movie = Movie.where({title: "The Dark Knight"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Rachel Dawes"
role.save

#Tom Hardy added to People and Roles
people = Person.new
people.name = "Tom Hardy"
people.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Bane"
role.save

#Joseph Gordon-Levitt added to People and Roles
people = Person.new
people.name = "Joseph Gordon-Levitt"
people.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "John Blake"
role.save

#Anne Hathaway added to People and Roles
people = Person.new
people.name = "Anne Hathaway"
people.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
role = Role.new
role.movie_id = movie.id
role.person_id = people.id
role.character_name = "Selina Kyle"
role.save

#link movies back to christopher nolan
people = Person.new
people.name = "Christopher Nolan"
people.save

movie = Movie.where({title: "Batman Begins"})[0]
movie.person = people.name
movie.save
movie = Movie.where({title: "The Dark Knight"})[0]
movie.person=people.name
movie.save
movie = Movie.where({title: "The Dark Knight Rises"})[0]
movie.person=people.name
movie.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
movie = Movie.all
for movies in movie
    puts "#{movies.title}  #{movies.year_released}  #{movies.rated}  #{movies.person}"
end



# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie

role=Role.all
for roles in role
    movies = roles.movie
    puts "#{movies.title}  #{roles.person.name}  #{roles.character_name}"
end

