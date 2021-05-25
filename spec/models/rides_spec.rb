require 'rails_helper'

RSpec.describe Ride, type: :model do
    describe 'associations' do 
      it { is_expected.to belong_to(:leader) } 
      it { is_expected.to have_many(:riders) }
      it { is_expected.to have_many(:comments) }
  end
end

