class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :birth_month, :birth_day, presence: true
  validates :birth_month, inclusion: { in: 1..12 }
  validates :birth_day, inclusion: { in: 1..31 }

  def find_closest_national_day
    birth_month_day = Date.new(2000, birth_month, birth_day)

    NationalDay
      # ±3日以内の記念日をDBにて取得
      .where("ABS(EXTRACT(DOY FROM national_day) - EXTRACT(DOY FROM CAST(? AS DATE))) <= 3", birth_month_day)
      .order(Arel.sql("ABS(EXTRACT(DOY FROM national_day) - EXTRACT(DOY FROM CAST('#{birth_month_day}' AS DATE))) ASC"))
      .first
  end
end
