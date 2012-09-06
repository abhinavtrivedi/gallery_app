# == Schema Information
#
# Table name: artifacts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  size       :string(255)
#  about      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artifact < ActiveRecord::Base
  attr_accessible :about, :size, :title
  validates :title, :presence => true
end
