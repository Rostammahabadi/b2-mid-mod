require 'rails_helper'

describe Movie, type: :model do

  describe "relationships" do
    it {should have_many :actors}
    it {should belong_to(:studio)}
  end

end
