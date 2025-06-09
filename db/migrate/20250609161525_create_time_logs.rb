class CreateTimeLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :time_logs do |t|
      t.integer :topic_id
      t.float :time_spent
      t.string :description

      t.timestamps
    end
  end
end
