class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable
end
