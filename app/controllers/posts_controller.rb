class PostsController < ApplicationController
  def home
    @posts = Post.order(created_at: :desc).limit(3)
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post salvato"
      redirect_to root_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post aggiornato"
      redirect_to root_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.image.destroy
    if @post.destroy
      flash[:notice] = "Post cancellato"
      redirect_to root_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :subtitle, :article, :image)
    end
end
