class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :director_name
      t.datetime :dob
      t.integer :director_number
      t.string :bio
      t.string :image

      t.timestamps
    end
  end
end
