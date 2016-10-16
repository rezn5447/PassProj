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
    p @commander.id
    # Dir.mkdir(:commanders_folder/"#{@commander.id}")
    # Dir.mkdir("/commanders")
    redirect "/commanders/#{@commander.id}"
  else
    @errors = @commander.errors.full_messages
    erb :"commanders/new"
  end





end
