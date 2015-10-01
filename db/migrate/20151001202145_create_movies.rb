class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.integer :length
      t.integer :release_year
      t.integer :rating

      t.timestamps null: false
    end
  end
end
