class Teacher < ApplicationRecord
    has_one :name
    belongs_to :subject
    has_one :school, through: :subject
end
