class AddDetailsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :date, :date
    add_column :posts, :place, :string
    add_column :posts, :memo, :text
  end
end
