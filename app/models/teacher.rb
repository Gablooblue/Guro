class Teacher < ApplicationRecord
    has_one :name
    has_and_belongs_to_many :subject
    has_one :school, through: :subject
end
