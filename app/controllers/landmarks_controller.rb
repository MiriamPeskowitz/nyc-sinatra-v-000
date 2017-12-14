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
	
	get '/landmark/:id/edit' do
	 	@landmark = Landmark.find(params[:id])
	 	erb :'landmarks/edit'
	end 

	post '/landmarks' do
		
		@landmark = Landmark.create(params["landmarks"])
		redirect to "/landmarks"
	end 

	post 'landmarks/:id' do
		@landmark = Landmark.find(params[:id])
		@landmark.update(params["landmark"])
		@landmark.name = params["landmark"]["name"]
		@landmark.year_completed["landmark"]["year_completed"]

		@landmark.save
		redirect to "landmarks/#{@landmark.id}"
	end 

end 
	
# (:name => params[landmark][name], 
		# @landmark = Landmark.find(params[:name => ["landmark"]["name"], :year_completed => params["landmark"]["year_completed"])


 

# # DONE get landmark/new
# #  allows you to view form to create a new landmark (FAILED - 10)
# #  		get landmark/new
# #   allows you to create a new landmark (FAILED - 11)
# #  
 		# post landmark/new
# #   allows you to list all landmarks (FAILED - 12)
# #   	get landmark/index or get landmark/show 

# #   allows you to see a single landmark (FAILED - 13)
# #   	get landmark/new id? 

# #   allows you to view the form to edit a single landmark (FAILED - 14)
# #   		get landmark/edit
# #   allows you to edit a single landmark (FAILED - 15)
# #   	patch landmark/edit
# #   creates checkboxes for all the landmarks and titles created on the Figures new page (FAILED - 16)

