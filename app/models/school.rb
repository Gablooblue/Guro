class School < ApplicationRecord
    has_many :subjects
    has_many :professors, through: :subjects

end
