module Types
  class MascotType < Types::BaseObject
    graphql_name 'Mascot'
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: true
    field :location, String, null: false
    field :description, String, null: false
    field :gender, String, null: false
    field :friendly_with_kids, Boolean, null: true
    field :friendly_with_other_dogs, Boolean, null: true
    field :friendly_with_cats, Boolean, null: true
    field :species, Boolean, null: true
    field :race, String, null: true
  end
end
