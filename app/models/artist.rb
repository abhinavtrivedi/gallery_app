# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  aboutme    :string(255)
#  style      :string(255)
#

class Artist < ActiveRecord::Base
  attr_accessible :email, :name, :aboutme, :style
  validates :name, :email, :presence => true
end
