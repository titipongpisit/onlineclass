
get '/teacher' do
  erb :hometeacher
end


get '/logged_in_teacher' do
  erb :teacheractivity 
end 

get '/shareearlier' do 

end 


post '/loginteacher' do 
  teacher = Teacher.where(email: params[:login]).first
  if teacher && params[:password] == teacher.password
    session[:teacher] = teacher.id
    redirect "/logged_in_teacher"
  else
    redirect '/teacher'
  end
end

post '/class' do 
  @course = Course.create(name: params[:classname], content: params[:content], teacher_id: session[:teacher])
  erb :teacheractivity

end 
