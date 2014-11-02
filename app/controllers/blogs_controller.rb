class BlogsController < ApplicationController
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

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
