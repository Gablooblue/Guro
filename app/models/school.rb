class School < ApplicationRecord
    has_many :subjects
    has_many :profesors, through: :subjects
end
