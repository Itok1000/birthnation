class User < ApplicationRecord
    validates :name, :birth_date, presence: true
    validates :name, length: { maximum: 255 }
    def find_closest_national_day
        birth_month_day = birth_date.strftime('%m-%d')
        days = NationalDay.all.sort_by do |day|
          (Date.strptime(day.national_day.strftime('%m-%d'), '%m-%d') - Date.strptime(birth_month_day, '%m-%d')).abs
        end
    
        days.find { |d| (d.national_day - birth_date).abs <= 7 }
    end
end
