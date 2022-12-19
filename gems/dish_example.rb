
require 'rubygems'
require 'dish'

hash = {
    movie: "Star Wars",
    actors: [
        {age:22, name: "Luke"},
        {age:35, name: "Han"},
        {age:400, name: "Yoga"}
    ],
    favorite: true
}

p media = Dish(hash)

p hash[:movie]
p media.movie
p media.actors.length
p media.actors[0].name
p media.actors[1].age
p media.favorite?