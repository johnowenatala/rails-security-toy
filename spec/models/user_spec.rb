require 'rails_helper'

RSpec.describe User, type: :model do
  it 'can be persisted' do
    expect( create(:user) ).to be_persisted
  end
end
