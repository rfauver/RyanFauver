class BlogController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end
end
