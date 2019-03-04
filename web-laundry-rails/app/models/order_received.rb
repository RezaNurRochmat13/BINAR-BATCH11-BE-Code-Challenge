class OrderReceived < ApplicationRecord
  belongs_to :member
  belongs_to :officer
end
