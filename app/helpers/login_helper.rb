# helper method to print out the obj that pass*just for me to check the values in the server side"

def helper_check_print(message,to_print)
  puts "**********<<<<<<<<<<<<<< #{message} >>>>>>>>>>>>>>>>>>>**********"
   p to_print
  puts "**********<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>**********"
end

def login(user)
  session[:user_id] = user.id
  # test = {}
  # test[:user_id] = 5
  # this is how you set a key value.
  helper_check_print("START SESSION LOG IN",session)
end

def logout
  session[:user_id] = nil || session.delete(:user_id)
  helper_check_print("SESSION CLEAR SIGN OUT",session)

end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def logged_in?
  !!current_user
end
