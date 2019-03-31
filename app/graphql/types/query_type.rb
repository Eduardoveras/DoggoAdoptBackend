module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_mascots, [MascotType], null: false do
      argument :id, ID, required: false
    end

    def all_mascots
      Mascot.all
    end
  end
end

