class SubjectProfessorsController < ApplicationController

    def new
    end

    #Creating a subject-professor relationship
    def create
	@subject = Subject.find(params[:professor][:subject_id])
	@professor = Professor.find(params[:professor_id])

	@subject.professors << @professor

	respond_to do |format|
	    format.html { redirect_to @subject }
	    format.json { render :show, status: :created, location: @subject}
	end
    end

    #Destroying a subject-professor relationship
    def destroy
	@subject = Subject.find(params[:subject][:id])
	@professor = @subject.professors.find(params[:professor][:id])


    end

    def subject_professor_params
	params.require(:subject_professor).permit(:subject_id, :professor_id)
    end

end
