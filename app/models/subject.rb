class Subject < ApplicationRecord
    belongs_to :school
    has_and_belongs_to_many :professors

    attr_accessor :professor_id
end
