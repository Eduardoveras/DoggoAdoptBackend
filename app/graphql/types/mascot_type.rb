module Types
  class MascotType < Types::BaseObject
    graphql_name 'Mascot'
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: true
    field :location, String, null: false
    field :description, String, null: false
    field :gender, String, null: false
    field :friendly_with_kids, Boolean, null: false
    field :friendly_with_other_dogs, Boolean, null: false
    field :friendly_with_cats, Boolean, null: false
    field :species, Boolean, null: false
    field :race, String, null: false

  end
end
