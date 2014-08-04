require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/posts'
)

class Post
  include DataMapper::Resource

  property :id, Serial
  property :post_title, String
  property :post_text, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @post = Post.all
  erb :index, layout: :layout
end

get '/create_post' do
  erb :create_post, layout: :layout
end

post '/create_post' do
  @post = Post.create params[:post]
  redirect to('/')
end

get '/display_post/:id' do
  @post = Post.get params[:id]
  erb :display_post, layout: :ayout
end

get '/edit_post/:id' do
  @post = Post.get params[:id]
  erb :edit_post, layout: :layout
end

put '/edit_post/:id' do
  p puts "*"*100
  p params
  @post = Post.get params[:id]
  @post.update params[:post]
  redirect to("/")
end

delete '/delete_post/:id' do
  @post = Post.get params[:id]
  @post.destroy
  redirect to("/")
end

