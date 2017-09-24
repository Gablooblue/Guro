class SubjectProfessorsController < ApplicationController

    #Creating a subject-professor relationship
    def create
	@subject = Subject.find(params[:id])
	@professor = Professor.find(params[:professor])

	@subject << @professor
    end

    #Destroying a subject-professor relationship
    def destroy
	@subject = Subject.find(params[:subject][:id])
	@professor = @subject.professors.find(params[:professor][:id])
	
	if @professor
	    @subject.professors.delete(@professor)
	end

    end
	
end
