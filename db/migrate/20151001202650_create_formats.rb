class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :value
    end
  end
end
