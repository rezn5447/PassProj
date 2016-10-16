get 'commander/:commander_id/mvp' do
  erb :'mvp/index'
end

get 'commander/:commander_id/mvp/new' do
  erb :'mvp/new'
end

get 'commander/:commander_id/mvp/:id' do
  @commander = MVP.find(params[:id])
  erb :"mvp/show"
end

get 'commander/:commander_id/mvp/:id/edit' do
  @commander = MVP.find(params[:id])
  erb :"mvp/edit"
end
