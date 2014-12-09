require 'rails_helper'

describe Member do
  let(:incomplete_profile) { build(:member)          }
  let(:complete_profile)   { build(:complete_member) }

  describe '#profile_complete?' do
    context 'without about or location' do
      it 'returns false' do
        expect(incomplete_profile.profile_complete?).to be_falsey
      end
    end

    context 'with about and location' do
      it 'returns true' do
        expect(complete_profile.profile_complete?).to be_truthy
      end
    end
  end

end