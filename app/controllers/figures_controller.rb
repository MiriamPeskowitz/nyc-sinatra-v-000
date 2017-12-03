class FiguresController < ApplicationController

	# get "/index" do 
	# 	@figures = Figure.all 
	# 	erb :"/figures/index"
	# end 

	get "/index" do
		"hello world" 
		erb :"/figures/index"
	end 

end