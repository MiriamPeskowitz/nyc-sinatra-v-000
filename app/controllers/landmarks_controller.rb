class LandmarksController < ApplicationController


	get '/' do 
		redirect '/landmarks'
	end 

	get '/landmarks' do
		@landmarks = Landmark.all
		@figures = Figure.all 
		erb :'landmarks/index'
	end 

	get '/landmarks/new' do 
		erb :'landmarks/new'
	end 

	get '/landmarks/:id' do
		@landmark = Landmark.find(params[:id])
		erb :'landmarks/show'
	end 
	

	get '/landmarks/:id/edit' do
	 	@landmark = Landmark.find(params[:id])
	 	erb :'landmarks/edit'
	end 

	post '/landmarks' do
		@landmark = Landmark.create(params["landmarks"])
		redirect to "/landmarks"
	end 

	 post '/landmarks/:id' do
	    @landmark = Landmark.find(params[:id])
	    @landmark.name = params[landmark][:name]
	    @landmark.year_completed = params[:landmark][:year_completed]
	   	@landmark.year_completed.to_s
	    @landmark.save
	    redirect to "/landmarks/#{@landmark.id}"
  	end
end 
