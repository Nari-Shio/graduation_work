class AddUserIdAndPostIdToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :user, null: false, foreign_key: true
    add_reference :bookmarks, :post, null: false, foreign_key: true
  end
end
