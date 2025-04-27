class SearchesController < ApplicationController
  def index
    @posts = Post.all

    if params[:keyword].present?
<<<<<<< HEAD
      @posts = @posts.where("place LIKE :keyword OR memo LIKE :keyword", keyword: "%#{params[:keyword]}%")
    end

    if params[:category].present?
      @posts = @posts.where(category: params[:category])
    end
  end
end
