class PersonalsController < ApplicationController
	http_basic_authenticate_with name: "shaddy", password: "sz636302", except: [:index, :show]

	def index
		@personals = Personal.all.order('created_at DESC')
	end

	def show
		@personal = Personal.find(params[:id])
	end


	def new
		@personal = Personal.new
	end

	def edit
		@personal = Personal.find(params[:id])
	end

	def create
		@personal = Personal.new(personal_params)

		if @personal.save
			redirect_to @personal
		else
			render 'new'
		end
	end

	def update
  		@personal = Personal.find(params[:id])
 
  		if @personal.update(personal_params)
    		redirect_to @personal
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@personal = Personal.find(params[:id])
  		@personal.destroy
 
  		redirect_to personals_path
	end

	private
		def personal_params
			params.require(:personal).permit(:title, :text)
		end
end
