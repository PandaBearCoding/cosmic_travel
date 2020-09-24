class Scientist < ApplicationRecord
    has_many :missions
    has_many :planets, through: :missions

    validates :name, presence: true, uniqueness: {case_sensitive: false, message: " not available!"}
    validates :field_of_study, presence: true
end
