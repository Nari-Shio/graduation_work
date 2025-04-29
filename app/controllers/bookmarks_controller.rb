class BookmarksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:create, :destroy]
  
    def index
      @bookmarked_posts = current_user.bookmarked_posts
    end

    def create
      post = Post.find(params[:post_id])
      unless current_user.bookmarks.exists?(post_id: post.id)
        current_user.bookmarks.create(post: post)
      end
      respond_to do |format|
        format.html { redirect_to request.referer, notice: 'ブックマークしました！' }
        format.js
        format.turbo_stream
      end
    end

    def destroy
      bookmark = current_user.bookmarks.find_by(post_id: params[:post_id])
      bookmark&.destroy
      respond_to do |format|
        format.html { redirect_to request.referer, notice: 'ブックマークを解除しました！' }
        format.js
        format.turbo_stream
      end
    end
    
    private

    def set_post
      @post = Post.find(params[:post_id])
    end
end
