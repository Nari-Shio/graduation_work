class ActionLogsController < ApplicationController
  before_action :set_action_log, only: [:show, :edit, :update, :destroy]
  before_action :set_post, only: [:new, :create, :edit, :update]

  def index
    @action_logs = ActionLog.order(date: :desc)
  end

  def new
    @post = Post.find(params[:post_id])
    @action_log = @post.action_logs.build
  end

  def create
    @action_log = @post.action_logs.build(action_log_params)
    if @action_log.save
      redirect_to posts_path, notice: "行動記録を追加しました！"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:post_id])
    @action_log = @post.action_logs.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @action_log = @post.action_logs.find(params[:id])

    if @action_log.update(action_log_params)
      redirect_to edit_post_path(@post), notice: "行動記録を更新しました！"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @action_log = @post.action_logs.find(params[:id])
    @action_log.destroy
    redirect_to edit_post_path(@post), notice: "行動記録を削除しました。"
  end

  private

  def set_action_log
    @action_log = ActionLog.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id]) if params[:post_id]
  end

  def action_log_params
    params.require(:action_log).permit(:date, :place, :category, :memo, :post_id, :created_at)
  end
end
