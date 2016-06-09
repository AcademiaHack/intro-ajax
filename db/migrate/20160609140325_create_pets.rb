class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :type
      t.integer :gender
      t.integer :diet
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
