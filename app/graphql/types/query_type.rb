module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :allMascots, [MascotType], null: false
    field :mascot, MascotType, null: true do
      argument :id, ID, required: false
    end
    def all_mascots
      Mascot.all
    end
  end
end

