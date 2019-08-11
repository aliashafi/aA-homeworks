class Corgi < ApplicationRecord
    has_many :toyables, polymorphic: true
    validates :name, :toyable, uniqueness: true

end
