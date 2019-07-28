class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :person, null: false
      t.integer :house_id, null: false
      t.timestamps
    end

    add_index :people, :person, unique: true
  end
end
