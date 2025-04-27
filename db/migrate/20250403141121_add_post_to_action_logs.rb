class AddPostToActionLogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :action_logs, :post, null: false, foreign_key: true
  end
end
