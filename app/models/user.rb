class User < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    has_many :events, foreign_key: 'admin', class_name: "Event"

end
