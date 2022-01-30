10.times do
  list = List.create(name: Faker::Music.genre)
  10.times do
    Item.create(list: list, name: Faker::Movie.title)
  end
end