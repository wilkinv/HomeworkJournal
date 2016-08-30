class ProblemsController < ApplicationController
	def create
		@assignment = Assignment.find(params[:assignment_id])
		@problem = @assignment.problems.create(params[:problem].permit(:name, :description))

		redirect_to assignment_path(@assignment)
	end
end
