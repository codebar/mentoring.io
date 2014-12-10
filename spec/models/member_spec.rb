require 'rails_helper'

describe Member do
  let!(:incomplete_profile) { create(:member)          }
  let!(:complete_profile)   { create(:complete_member) }

  describe '.with_complete_profile' do
    it 'returns only members with complete profiles' do
      expect(Member.with_complete_profile).to match_array [complete_profile]
    end
  end

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