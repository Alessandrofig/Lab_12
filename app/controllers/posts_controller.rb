class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	before_action :authorize_user!, only: [:edit, :update, :destroy]
  
	def index
	  @posts = Post.all
	end
  
	def show
	  # No es necesario encontrar el post aquí porque ya está configurado en el before_action
	end
  
	def new
	  @post = current_user.posts.build # Crea un nuevo post asociado al usuario actual
	end
  
	def create  
	  @post = current_user.posts.build(post_params) # Asigna el ID del usuario actual al post
	  if @post.save
		redirect_to posts_path, notice: 'Post was successfully created.'
	  else
		render :new
	  end
	end
  
	def edit
	  # No es necesario encontrar el post aquí porque ya está configurado en el before_action
	end
  
	def update
	  if @post.update(post_params)
		redirect_to posts_path, notice: 'Post was successfully updated.'
	  else
		render :edit
	  end
	end
  
	def destroy
	  @post.destroy
	  redirect_to posts_path, notice: 'Post was successfully destroyed.'
	end
  
	private
  
	def set_post
	  @post = Post.find(params[:id])
	end
  
	def authorize_user!
	  redirect_to root_path, alert: 'You are not authorized to perform this action.' unless @post.user == current_user
	end
  
	def post_params
	  params.require(:post).permit(:title, :content, :user_id, :answers_count)
	end
  end