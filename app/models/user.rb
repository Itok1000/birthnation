class User < ApplicationRecord
    validates :name, birth_date, precedence: true
    validates :name, length: { maximum: 255 }
end
