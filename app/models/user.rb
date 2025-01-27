class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :birth_month, :birth_day, presence: true
  validates :birth_month, inclusion: { in: 1..12 }
  validates :birth_day, inclusion: { in: 1..31 }

  def find_closest_national_day
    birth_month_day = Date.new(2000, birth_month, birth_day) # 基準年を2000年に固定
    days = NationalDay.all.sort_by do |day|
      national_day_month_day = Date.new(2000, day.national_day.month, day.national_day.day)
      (birth_month_day - national_day_month_day).abs
    end

    days.find do |day|
      national_day_month_day = Date.new(2000, day.national_day.month, day.national_day.day)
      (birth_month_day - national_day_month_day).abs <= 7
    end
  end
end
