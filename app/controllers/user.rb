
get '/studentsignup' do
  erb :studentsignup
end 


get '/logout' do
  session.destroy
  redirect '/'
end

get '/logged_in' do
  if session[:user]
    erb :home
  else
    redirect '/'
  end 
end 

post '/login' do 
  student = Student.where(email: params[:login]).first
  if student && params[:password] == student.password
    session[:user] = student.id
    redirect "/logged_in"
  else
    redirect '/'
  end
end

post '/signup' do 

end 
