get '/users/new' do
  erb:'users/new_html'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    helper_check_print("USER LOG IN AFTER SGIN UP" ,@user)
    login(@user)
    redirect "users/#{@user.id}"
  else
    @errors = @user.error.full_messages
    redirect "/users/new"
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb:'users/show_html'
end
