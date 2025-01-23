class User < ApplicationRecord
    validates :name, :birth_date, presence: true
    validates :name, length: { maximum: 255 }
end
