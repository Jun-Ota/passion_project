get '/slacks' do
 @client = SimpleSlack::Client.new(ENV["SLACK"])
 @channels = @client.get.channels
 erb :'slacks/show_html'
end

get '/slacks/users' do
 @client = SimpleSlack::Client.new(ENV["SLACK"])
 @users = @client.get.users
 erb :'slacks/show_users_html'
end


