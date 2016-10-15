get '/commanders' do
  erb :'commanders/index'
end

get '/commanders/new' do
  erb :'commanders/new'
end



get '/commanders/:id' do
  @commander = Commander.find(params[:id])
  p @commander
  erb :"commanders/show"
end

get '/commanders/:id/edit' do
  @commander = Commander.find(params[:id])
  erb :"commanders/edit"
end

# all this should work
post "/commanders" do
 @commander = Commander.new(params[:commander])
  p @commander
  if @commander.save
    p "*" * 70
    p @commander.id
    p "*" * 70
    redirect "/commanders/#{@commander.id}"
  else
    @errors = @commander.errors.full_messages
    erb :"commanders/new"
  end

  # NOT SURE IF I STILL NEED THIS ONE

get '/commanders/login' do
  erb :"commanders/login"
end

end
