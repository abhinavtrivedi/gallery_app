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

require 'spec_helper'

describe Artist do
  before do
    @artist = Artist.new(name:"New Artist", email:"artist@galleryapp.com", style:"Painter", aboutme:"Test")
  end

  subject {@artist}

  it { should respond_to :name }
  it { should respond_to :email }
  it { should respond_to :aboutme }
  it { should respond_to :style }

  it { should be_valid }

  describe "when name is blank" do
    before { @artist.name = " " }
    it { should_not be_valid }
  end

  describe "when email is blank" do
    before { @artist.email = " " }
    it { should_not be_valid }
  end
end
