class AdminController < ApplicationController
    before_action :authenticate_user!

    def index
	@schools = School.all
	@subjects = Subject.all
	@professors = Professor.all
    end
end
