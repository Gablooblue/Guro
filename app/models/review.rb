class Review < ApplicationRecord
    belongs_to :professor
    belongs_to :subject
    belongs_to :school, through: :subject
end
