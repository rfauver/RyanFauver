class BlogsController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"], only: :new

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to :root
    else
      render 'new'
    end
  end

  def index
    @blogs = Blog.order('created_at DESC').page(params[:page]).per(5)
  end



  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
