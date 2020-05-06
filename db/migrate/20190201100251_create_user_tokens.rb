class CreateUserTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tokens do |t|
      t.string :value, null: false, index: true, unique: true
      t.datetime :expired_at, null: false
      t.integer :user_id, index: true, null: false
      t.timestamps
    end
  end
end
