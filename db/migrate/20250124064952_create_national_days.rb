class CreateNationalDays < ActiveRecord::Migration[7.2]
  def change
    create_table :national_days do |t|
      t.string :country_name, null: false        # 国名
      t.date :national_day, null: false          # 建国記念日
      t.string :description                      # 祝日に関する説明

      t.timestamps
    end
  end
end
