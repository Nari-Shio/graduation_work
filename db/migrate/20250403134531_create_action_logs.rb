class CreateActionLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :action_logs do |t|
      t.date :date
      t.string :place
      t.string :category
      t.text :memo

      t.timestamps
    end
  end
end
