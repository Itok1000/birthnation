class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :birth_month, :birth_day, presence: true
  validates :birth_month, inclusion: { in: 1..12 }
  validates :birth_day, inclusion: { in: 1..31 }

  def find_closest_national_day
    birth_month_day = Date.new(2000, birth_month, birth_day) # 基準年を2000年に固定

    # ±3日以内の記念日を取得
    closest_days = NationalDay.all.select do |day|
      national_day_month_day = Date.new(2000, day.national_day.month, day.national_day.day)
      (birth_month_day - national_day_month_day).abs <= 3
    end
    # 記念日との日数差が最も小さいものを選択
    closest_days.min_by { |day| (birth_month_day - Date.new(2000, day.national_day.month, day.national_day.day)).abs }
  end
end
