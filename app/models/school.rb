class School < ApplicationRecord
    has_many :subjects
    has_many :teachers, through: :subjects
end
