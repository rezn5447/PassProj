get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/session-viewer' do
  session.inspect
end

get '/login' do
  erb :login
end

# post '/login' do
# erb :"commanders/login"
#  @commander = Commander.find(params[:id])
#  erb :"commanders/show"
# end
# get '/signup' do
#   erb :signup
# end

post '/login' do
  @commander = Commander.find_by_email(params[:email])
  if @commander.password == params[:password]
       session[:id] = @commander.id
      redirect '/logged_in'
  else
    erb :"login"
  end
end

get '/logged_in' do
  erb :"logged_in"
end

get '/logged_out' do
  session.delete(:id)
  redirect '/'
end

get '/secret' do
  if  session[:id]
   erb :"secret"
 else
  redirect '/'
 end
end

# CONTROLLERS I NEED TO ADD
# LOGIN / LOG OUT
# COMMANDER PAGE
# SQUAD PAGE FOR ALL MVPS  (MVP.ALL)

