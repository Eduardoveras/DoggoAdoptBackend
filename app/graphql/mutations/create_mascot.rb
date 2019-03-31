module Mutations
  class CreateMascot < BaseMutation
    # arguments passed to the `resolved` method
    argument :name, String, required: true
    argument :location, String, required: false
    argument :age, Integer, required: false
    argument :description, String, required: false
    argument :gender, String, required: false
    argument :friendly_with_kids, Boolean, required: false
    argument :friendly_with_other_dogs, Boolean, required: false
    argument :friendly_with_cats, Boolean, required: false
    argument :species, String, required: false
    argument :race, String, required: false

    # return type from the mutation
    type Types::MascotType

    def resolve(name: nil,
                location: nil,
                age: nil,
                description: nil,
                gender: nil,
                friendly_with_kids: nil,
                friendly_with_other_dogs: nil,
                friendly_with_cats: nil,
                species: nil,
                race: nil)
      Mascot.create!(
        name: name,
        location: location,
        age: age,
        description: description,
        gender: gender,
        friendly_with_kids: friendly_with_kids,
        friendly_with_other_dogs: friendly_with_other_dogs,
        friendly_with_cats: friendly_with_cats,
        species: species,
        race: race
          )
    end
  end
end