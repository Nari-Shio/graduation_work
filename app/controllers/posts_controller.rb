class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
    @post.action_logs.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, notice: '投稿成功！'
    else
      render :new, alert: "投稿失敗…"
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    @bookmark_exists = current_user.bookmarks.exists?(post_id: @post.id) if user_signed_in?
    unless @post
      redirect_to root_path, alert: '指定された投稿が見つかりませんでした。'
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
    if @post.action_logs.empty?
      log = @post.action_logs.build
      log.save!
    end
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: '投稿を更新しました！'
    else
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました。"
  end

  private

  def post_params
    params.require(:post).permit(:date, :place, :category, :memo, :image, action_logs_attributes:[:id, :place, :category, :memo, :created_at, :_destroy])
  end
end
