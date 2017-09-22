class Professor < ApplicationRecord
    has_one :name
    has_and_belongs_to_many :subjects
    has_many :schools, through: :subject
    has_many :reviews
end
