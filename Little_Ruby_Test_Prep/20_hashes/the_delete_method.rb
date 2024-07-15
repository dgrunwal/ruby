# delete - remove a key-value pair by its key

superheroes = {
  spiderman: "Peter Parker",
  superman: "Clark Kent",
  batman: "Bruce Wayne"
}

p superheroes

real_name = superheroes.delete(:spiderman)
p superheroes
p real_name