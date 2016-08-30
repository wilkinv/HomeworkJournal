class AssignmentsController < ApplicationController
	before_action :find_assignment, only: [:show, :edit, :update, :destroy]
	def index
		@assignments = Assignment.all.order("created_at DESC")
	end

	def show
	end

	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new(assignment_params)
		if @assignment.save
			redirect_to @assignment
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @assignment.update(assignment_params)
			redirect_to @assignment
		else
			render 'edit'
		end
	end

	def destroy
		@assignment.destroy
		redirect_to root_path
	end

	private

	def assignment_params
		params.require(:assignment).permit(:date, :assignment, :difficulty)
	end

	def find_assignment
		@assignment = Assignment.find(params[:id])
	end
end
