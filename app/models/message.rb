class Message < ApplicationRecord
  belongs_to :service_tube
  belongs_to :user
end
