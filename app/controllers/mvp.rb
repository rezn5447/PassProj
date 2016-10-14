get '/mvp' do
  erb :'mvp/index'
end

get '/mvp/new' do
  erb :'mvp/new'
end

get '/mvp/login' do
  erb :"mvp/login"
end

get '/mvp/:id' do
  @mvp = MVP.find(params[:id])
  erb :"mvp/show"
end

get '/mvp/:id/edit' do
  @mvp = MVP.find(params[:id])
  erb :"mvp/edit"
end
 post 'mvps' do
  p "*" * 70
  p params
  p "*" * 70
  @mvp = MVP.new(params[:mvp])
  p @mvp
  if @mvp.save
    redirect "/mvps/show"
  else
    redirect "/"
  end
end
