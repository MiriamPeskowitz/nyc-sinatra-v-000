class FiguresController < ApplicationController


#show all figures
	get "/index" do 
		@figures = Figure.all
		erb :"/figures/index"
	end 


#send form for new figure
	get "figures/new" do
		erb :"/figures/new"
	end 

#get data from form, turn into object, send to db
	post "/figures/new" do 
		@figure = Figure.create(:name => params[figure[name]])
		# ??
		redirect to '/index'
	end 

	# get "/index" do
	# 	"hello world" 
	# 	erb :"/figures/index"
	# end 

end

# @song = Song.create(:name => params["Name"])
# 		@song.artist = Artist.find_or_create_by(:name => params["Artist Name"])
# 		@song.genre_ids = params[:genres]
# 		@song.save

 # allows you to view form to create a new figure (FAILED - 1)
 		get figures/new

 #  allows you to create a new figure with a title (FAILED - 2)
 		post figures/new complex 
 #  allows you to create a new figure with a landmark (FAILED - 3)
 		post figures/new complex
 #  allows you to create a new figure with a new title (FAILED - 4)
 		post figures/new complex
 #  allows you to create a new figure with a new landmark (FAILED - 5)
 		post figures/new complex

 		also:   creates checkboxes for all the landmarks and titles created on the Figures new page (FAILED - 16)

 #  allows you to list all figures (FAILED - 6)
 		get figures/index or show 
 #  allows you to see a single Figure (FAILED - 7)
 		get figures/show/:id
 #  allows you to view form to edit a single figure (FAILED - 8)
 		get figures/edit 
 #  allows you to edit a single figure (FAILED - 9)
 		patch figures/edit 