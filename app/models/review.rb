class Review < ApplicationRecord
    belongs_to :professor
    belongs_to :subject
    has_one :school, through: :subject
end
