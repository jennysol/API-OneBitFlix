class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
end
