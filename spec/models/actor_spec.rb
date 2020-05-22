require 'rails_helper'

describe Actor, type: :model do

  describe "relationships" do
    it {should belong_to(:movie)}
  end

end
