class FiguresController < ApplicationController


#show all figures
	get '/figures' do 
		@figures = Figure.all
		erb :'figures/index'
	end 

#send form for new figure
	get '/figures/new' do
		erb :'figures/new'
	end 


# see a specific figure 
	get "/figures/:id" do
		@figure = Figure.find(params[:id])
		erb :"figures/show"
	end 



	get "/figures/:id/edit" do
		@figure = Figure.find(params[:id]) #pulls the figure data from th db 
		erb :"figures/edit"
	end


#collect data for new figure 
	post '/figures' do 
	
		@figure = Figure.create(params["figure"])

		  if !params[:landmark][:name].empty?
	        @figure.landmarks << Landmark.create(params[:landmark])
	      end

	      if !params[:title][:name].empty?
	        @figure.titles << Title.create(params[:title])
	      end
	
	    
		  redirect to "/figures"

	end 




#get data from new form, turn into object, send to db, go to 

#get data from edit form 
	post "/figures/:id" do
	

		@figure = Figure.find(params[:id])
		@figure.update(params[:figure])
     
	      if !params[:landmark][:name].empty?
	        @figure.landmarks << Landmark.create(params[:landmark])
	      end

	      if !params[:title][:name].empty?
	        @figure.titles << Title.create(params[:title])
	      end

	      @figure.save
	     
	      redirect to "/figures/#{@figure.id}"
	end 



	# delete '/figures/:id/delete' do
	# 	@figure = Figure.find_by_id(params[:id])
	# 	@figure.delete
	# 	redirect to '/figures/index'
	# end 
end

