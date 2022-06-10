FactoryBot.define do
  factory(:pet) do
    name {Faker::Artist.name}
    klass {Faker::Games::DnD.klass}
    level {Faker::Number.within(range: 1..20)}
    quote {Faker::Movie.quote}
    species_id {rand(Species.ids.first..Species.ids.last)}
  end
end