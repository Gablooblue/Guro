class SubjectProfessorsController < ApplicationController

    def new

    end
    #Creating a subject-professor relationship
    def create
	@subject = Subject.find(params[:subject])
	@professor = Professor.find(params[:professor])

	@subject.professors << @professor
	@professor.subjects << @subject
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
