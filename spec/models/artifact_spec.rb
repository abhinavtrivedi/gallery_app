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

require 'spec_helper'

describe Artifact do

  before do
    @artifact = Artifact.new(title:"New Artifact", size: "5x7", about: "This is a new artifact")
  end

  subject {@artifact}

  it {should respond_to :title}
  it {should respond_to :size}
  it {should respond_to :about}

  it {should be_valid}

  describe "when title is blank" do
    before {@artifact.title = ""}
    it {should_not be_valid}
  end

end
