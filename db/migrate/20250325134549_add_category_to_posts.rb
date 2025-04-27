class AddCategoryToPosts < ActiveRecord::Migration[7.0]
  def change
    create_enum :post_category, ['イベント', 'アトラクション', 'ショー', 'フード', 'その他']
    add_column :posts, :category, :enum, enum_type: :post_category, default: 'イベント', null: false
  end
end
