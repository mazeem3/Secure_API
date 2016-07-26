class Api::PostsController < ApplicationController

protect_from_forgery with: :null_session

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    if @post.save
      render :show
    else
      render json: @post.errors, status: 422
    end
  end


end
