require 'sinatra'
require 'data_mapper'



env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/peep'
require './lib/user' 

DataMapper.finalize
DataMapper.auto_upgrade!

enable :sessions
set :session_secret, 'secret stuff man'
get '/' do
    @peeps = Peep.all 
  erb :index 
end  

post '/peeps' do
  title = params["title"]
  message = params["message"]
  Peep.create(:title => title, :message => message)
  redirect to('/')
end

get '/users/new' do

  erb :"users/new"
end

post '/users' do
  user = User.create(:email => params[:email], 
                     :password => params[:password])  
  session[:user_id] = user.id
  redirect to('/')
end

helpers do

  def current_user    
    @current_user ||=User.get(session[:user_id]) if session[:user_id]
  end

end