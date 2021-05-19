require 'rails_helper'

RSpec.describe Ride, type: :model do
    describe 'associations' do 
      it { should belong_to(:leader) } 
      it { should have_many(:riders) }
  end
end

