class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name,     null: false
      t.integer :birth_month, null: false # 月のカラム
      t.integer :birth_day, null: false   # 日のカラム
      t.timestamps
    end
  end
end
