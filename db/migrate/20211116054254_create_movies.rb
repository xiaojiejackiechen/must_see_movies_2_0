class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :flyer
      t.string :title
      t.datetime :production_year
      t.string :description
      t.integer :director_id

      t.timestamps
    end
  end
end
