require 'rails_helper'

RSpec.describe User, type: :model do

  describe '#columns' do
    it { is_expected.to have_db_column(:email) }
    it { is_expected.to have_db_column(:encrypted_password) }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to_not allow_value("blah").for(:email) }
    it { is_expected.to allow_value("a@b.com").for(:email) } 
  end

end
