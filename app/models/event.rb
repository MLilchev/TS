class Event < ApplicationRecord
  belongs_to :episodes, optional: true
end
