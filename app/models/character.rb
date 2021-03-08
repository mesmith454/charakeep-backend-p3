class Character < ApplicationRecord
    belongs_to :user
    has_one :race
    has_many :stats
    has_many :achievements
    has_one :character

    validates :name, presence: true
end