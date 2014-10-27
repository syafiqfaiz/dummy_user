get '/' do
  # Look in app/views/index.erb
  erb :index
end


post 'sign_in_user' do

end


get '/sign_up' do

  erb:'user/sign_up'
end



post '/sign_up_user' do
  User.create(name: params[:name], email: params[:email], password: params[:password]).valid?
  redirect '/sign_up_user/succes'
end


get '/sign_up_user/succes' do
  u = User.last
  "Succesfully register #{u.name} #{u.password}."
end