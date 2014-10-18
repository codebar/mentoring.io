class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]


  def self.from_omniauth(auth)
    if member = Member.find_by_email(auth.info.email)
      member.provider = auth.provider
      member.uid = auth.uid
      member
    else
      where(auth.slice(:provider, :uid)).first_or_create do |member|
        member.provider = auth.provider
        member.uid = auth.uid
        member.email = auth.info.email
        member.password = Devise.friendly_token[0,20]
      end
    end
  end


end
