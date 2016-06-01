# index
get '/casinos' do
  # find all the casinos
  # render the index template
  @casinos = Casino.all
  erb :'casinos/index'
end

# new
get '/casinos/new' do
  # render the form to gather user input
  @casino = Casino.new
  erb :'casinos/new'
end

# create
post '/casinos' do
  # take the user input
  # generate the resource
  # if successful
  #  redirect to ...
  # else
  #   set status to 422
  #   show the new form again with errors
  @casino = Casino.new(params[:casino])
  if @casino.save
    redirect "/casinos"
  else
    status 422
    erb :'casinos/new'
  end
end

# show
get '/casinos/:id' do
  # find the resource
  # render the resource
  @casino = Casino.find(params[:id])
  erb :'casinos/show'
end

# edit
get '/casinos/:id/edit' do
  # find the resource
  # show the form with the values filled in
  @casino = Casino.find(params[:id])
  erb :'casinos/edit'
end

# update
patch '/casinos/:id' do
  # find the resource
  # update the resource
  # if successful
  #  redirect to ...
  # else
  #  status is 422
  #  show the edit form again
  @casino = Casino.find(params[:id])
  if @casino.update_attributes(params[:casino])
    redirect "/casinos/#{@casino.id}"
  else
    status 422
    erb :'casinos/edit'
  end
end

# destroy
delete '/casinos/:id' do
  # find the resource
  # delete the resource
  # redirect ...
  @casino = Casino.find(params[:id])
  @casino.destroy
  redirect "/casinos"
end
