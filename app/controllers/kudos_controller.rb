get '/kudos' do
  @kudos = Kudo.all
  erb :'/kudos/index_html'
end

get '/kudos/new' do
  erb :'/kudos/new_html'
end

post '/kudos' do
  @kudo = Kudo.new(params[:kudo])
  if @kudo.save
    redirect "/kudos/#{@kudo.id}"
  else
    @errors = @kudo.errors.full_messages
    erb :'kudos/new_html'
  end
end

get '/kudos/:id' do
  @kudo= Kudo.find(params[:id])
  erb :'kudos/show_html'
end

get '/kuedos/:id/edit' do
  @kudo = Kudo.find(params[:id])
  erb :'kudos/edit_html'
end

put '/kudos/:id' do
  @kudo = Kudo.find(params[:id])
  @kudo.assign_attributes(params[:kudo])
  if @kudo.save
    redirect '/kudos'
  else
    @errors = @kudo.errors.full_messages
    erb :'kudos/edit_html'
  end
end

delete '/kudos/:id' do
  Kudo.find(params[:id]).destroy
  redirect '/kudos'
end
