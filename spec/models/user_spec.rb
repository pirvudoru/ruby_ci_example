require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.create' do
    subject(:create) { User.create(email: 'foo@test.com') }

    it 'creates a User' do
      expect { create }.to change { User.count }.by(1)
    end

    it 'causes a failure' do
      expect { create }.to change { User.count }.by(100)
    end
  end
end
