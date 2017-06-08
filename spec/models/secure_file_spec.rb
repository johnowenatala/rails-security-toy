require 'rails_helper'

RSpec.describe SecureFile, type: :model do
  context 'with user' do
    let(:new_secure_file) { create(:secure_file) }
    it 'can be created' do
      expect( new_secure_file ).to be_persisted
    end
    it 'has its user' do
      expect( new_secure_file.owner ).to be_a(User)
    end
    it 'has its user persisted' do
      expect( new_secure_file.owner ).to be_persisted
    end
  end
end
