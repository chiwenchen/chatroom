# == Schema Information
#
# Table name: service_tubes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ServiceTube < ApplicationRecord
  has_many :service_tube_users
  has_many :users, through: :service_tube_users
  has_many :messages
end
