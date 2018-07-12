require 'rails_helper'

RSpec.describe Article, type: :model do

  subject { build_stubbed(:article) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }
end
