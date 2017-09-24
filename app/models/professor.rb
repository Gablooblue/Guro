class Professor < ApplicationRecord
    has_and_belongs_to_many :subjects
    has_many :schools, through: :subject
    has_many :reviews, dependent: :destroy

    attr_accessor :subject_id

    def average_rating
	if(self.reviews.any?)
	    self.reviews.average(:score).where(subject: self.subject)
	else
	    return 5.00
	end
    end

    def overall_rating
	if(self.reviews.any?)
	    self.reviews.average(:score)
	else
	    return 5.00 
	end
    end
end
