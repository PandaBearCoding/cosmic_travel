class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet

    validates :name, presence: true, uniqueness: {case_sensitive: false, message: " not available!"}
    validates :scientist_id, presence: true
    validates :planet_id, presence: true
end
