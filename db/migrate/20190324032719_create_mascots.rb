class CreateMascots < ActiveRecord::Migration[5.2]
  def change
    create_table :mascots do |t|
      t.string :name
      t.integer :age
      t.string :location
      t.text :description
      t.string :gender
      t.boolean :friendly_with_kids
      t.boolean :friendly_with_other_dogs
      t.boolean :friendly_with_cats
      t.string :species
      t.string :race

      t.timestamps
    end
  end
end
