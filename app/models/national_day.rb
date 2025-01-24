class NationalDay < ApplicationRecord
    validates :country_name, :national_day, presence: true
end
