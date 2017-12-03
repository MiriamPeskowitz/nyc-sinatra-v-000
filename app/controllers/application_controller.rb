class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  register Sinatra::Twitter::Bootstrap::Assets

  configure do 	
		enable :sessions
		set :session_secret, "my_secret"
	end 
	# get '/' do
 #    	erb :index
 # 	end

end
