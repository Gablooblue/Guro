class Professor < ApplicationRecord
    has_and_belongs_to_many :subjects
    has_many :schools, through: :subject
    has_many :reviews, dependent: :destroy

    attr_accessor :subject_id

    def average_rating(subject_id)
	if(self.reviews.any?)
	    self.reviews.where(subject: subject_id).average(:score).round(2)
	else
	    return 5.00
	end
    end

    def overall_rating
	if(self.reviews.any?)
	    self.reviews.average(:score).round(2)
	else
	    return 5.00 
	end
    end
end
