class Seed
  Species.destroy_all
  Pet.destroy_all
  
  def self.begin
    seed = Seed.new
    seed.generate_pets
  end

  def generate_pets
    Species.create!(
      species_name: "cat",
      latin_name: "Felis catus"
    )

    Species.create!(
      species_name: "dog",
      latin_name: "Canis lupus familiaris"
    )

    30.times do |i|
      pet = Pet.create!(
        name: Faker::Artist.name,
        klass: Faker::Games::DnD.klass,
        level: Faker::Number.within(range: 1..20),
        quote: Faker::Movie.quote,
        species_id: rand(1..2)
      )
      puts "Pet #{i} is #{pet.name} the #{Species.find(pet.species_id).species_name}"
    end
  end
end

Seed.begin