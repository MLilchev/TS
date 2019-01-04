class Episode < ApplicationRecord
  has_many :events
  belongs_to :states, optional: true
end
