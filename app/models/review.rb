class Review < ApplicationRecord
    belongs_to :teacher
    belongs_to :subject
    belongs_to :school, through: :subject
end
