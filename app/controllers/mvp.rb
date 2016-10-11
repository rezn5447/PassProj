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
  @commander = MVP.find(params[:id])
  erb :"mvp/show"
end

get '/mvp/:id/edit' do
  @commander = MVP.find(params[:id])
  erb :"mvp/edit"
end
