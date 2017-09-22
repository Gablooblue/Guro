class AdminController < ApplicationController
    def index
	@schools = School.all
	@subjects = Subject.all
	@professors = Professor.all
    end
end
