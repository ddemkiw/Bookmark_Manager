
get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  email, password = params[:email], params[:password]
  user = User.authenticate(email, password)
  if user
    session[:user_id] = user.id
    redirect to('/')
  else
    flash[:errors] = ["The email or password is incorrect"]
    erb :"sessions/new"
  end
end

delete '/sessions' do 
  flash[:notice] = "Good bye!"
  session[:user_id] = nil 
  redirect to('/')
end 

# post '/session/reminder' do 
#   user = User.first(:email => params[:email])
#   password_token= (1..64).map{('A'..'Z').to_a.sample}.join
#   user.savve
# end 

# get '/sessions/request_token' do 
#   erb :"sessions/request_token"
# end 

# post '/sessions/change_password/:token' do
#   user = User.first(:password_token => params[:token]) 
#   erb :change_password
# end 


