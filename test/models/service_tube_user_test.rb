# == Schema Information
#
# Table name: service_tube_users
#
#  id              :integer          not null, primary key
#  service_tube_id :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ServiceTubeUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
