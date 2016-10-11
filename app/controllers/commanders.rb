get '/commanders' do
  erb :'commanders/index'
end

get '/commanders/new' do
  erb :'commanders/new'
end

get '/commanders/login' do
  erb :"commanders/login"
end

get '/commanders/:id' do
  @commander = Commander.find(params[:id])
  erb :"commanders/show"
end

get '/commanders/:id/edit' do
  @commander = Commander.find(params[:id])
  erb :"commanders/edit"
end

# all this should work
post "/commanders" do
  p "*" * 70
  p params
  p "*" * 70
  @commander = Commander.new(params[:commander])
  p @commander
  if @commander.save
    redirect "/commanders/show"
  else
    @errors = @commander.errors.full_messages
    erb :"commanders/new"
  end
end
