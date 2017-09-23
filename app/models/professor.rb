class Professor < ApplicationRecord
    has_one :name
    has_and_belongs_to_many :subjects
    has_many :schools, through: :subject
    has_many :reviews

    def average_rating
	self.reviews.average(:score).where(subject: self.subject)
    end

    def overall_rating
	self.reviews.average(:score)
    end
end
