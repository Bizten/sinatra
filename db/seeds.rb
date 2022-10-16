require './app/models/client.rb'
require './app/models/card.rb'

Client.destroy_all
Card.destroy_all

seed1 = Client.create(name: "Dave")
seed2 = Client.create(name: "John")
