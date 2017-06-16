class Slack
  def initialize
    @client = SimpleSlack::Client.new(ENV["SLACK"])
    @channels = @client.get.channels
    @users = @client.get.users
  end


  def get_channel(channel_id)
    client.get.channel("channel_id")
    # => { id: "channel_id", name: "channel_name" }
  end

  def get_channel(channel_name)
    client.get.channel("channel_name")
    # => { id: "channel_id", name: "channel_name" }
  end

  # you can take user_name
  def get_user(user_id)
    client.get.user(user_id)
    # =>{ id: "user_id", name: "user_name"}
  end

  def post(channel, text, name)
    client.post.channel(to: channel, text: text, name: name)
    # needs to be in string
  end


# <%= @client.post.channel(to: "sea-lions-general", text: "hello world", name: "real peter pushing to master") %>
end
