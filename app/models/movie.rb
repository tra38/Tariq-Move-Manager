class Movie < ActiveRecord::Base
    validates :title, { length: 1..50 }
    validates :format, { presence: true }
    validates :length, numericality: { only_integer: true, less_than: 500 }
    validates :release_year, numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }
    belongs_to :format
end
