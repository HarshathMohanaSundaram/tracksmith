class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :topic
      t.string :theme
      t.string :skill_set
      t.float :estimation
      t.integer :xp
      t.boolean :completed, default: false
      t.datetime :completed_at

      t.timestamps
    end
  end
end
