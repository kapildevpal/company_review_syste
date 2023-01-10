class User < ApplicationRecord
 has_many :companies
 has_many :reviews, through: :companies
 enum :user_type, %i(ger_user admin supports)

end
