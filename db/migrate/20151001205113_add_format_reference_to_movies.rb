class AddFormatReferenceToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :format, index: true, foreign_key: true
  end
end
