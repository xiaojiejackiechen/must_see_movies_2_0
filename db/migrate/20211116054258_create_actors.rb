class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :actor_name
      t.integer :actor_number
      t.datetime :dob
      t.string :bio
      t.string :image

      t.timestamps
    end
  end
end
