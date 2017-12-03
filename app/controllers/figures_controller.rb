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