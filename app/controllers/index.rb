get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/course/:id' do
  @course = Course.find(params[:id])
  erb :showcourse
end 

get '/getback' do 
  erb :home 
end 
