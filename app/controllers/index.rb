get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/login' do
  erb :login
end

get '/signup' do
  erb :signup
end

# CONTROLLERS I NEED TO ADD
# LOGIN / LOG OUT
# COMMANDER PAGE
# SQUAD PAGE FOR ALL MVPS  (MVP.ALL)

