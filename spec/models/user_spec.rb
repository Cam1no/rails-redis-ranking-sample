require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validate' do

    subject { build_stubbed(:user) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }

    context 'regex match' do
      subject { build_stubbed(:user).email }

      it { is_expected.to match(User::VALID_EMAIL_REGEX) }
    end
  end
end
