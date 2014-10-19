class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]

  cattr_reader :expertise_levels

  @@expertise_levels = {
    1 => 'No programming knowledge',
    2 => "I'm familiar with html and css",
    3 => 'I know some basic programming',
    4 => 'Junior developer',
    5 => 'Mid-level developer',
    6 => 'Senior developer'
  }

  # ASSOCIATIONS
  has_many :member_skills
  has_many :skills, through: :member_skills
  accepts_nested_attributes_for :member_skills, :allow_destroy => true
  has_many :classifieds
  accepts_nested_attributes_for :classifieds, :allow_destroy => true
  has_many :member_interests
  has_many :interests, through: :member_interests
  accepts_nested_attributes_for :member_interests, :allow_destroy => true

  def self.from_omniauth(auth, mentor=false)
    if member = Member.find_by_email(auth.info.email)
      member.provider = auth.provider
      member.uid = auth.uid
    else
      member = Member.where(provider: auth.provider, uid: auth.uid).first
      member = Member.new if member.nil?
      member.provider = auth.provider
      member.uid = auth.uid
      member.email = auth.info.email
      member.password = Devise.friendly_token[0,20]
      member.mentor = mentor
      member.save
    end
    member
  end

  # VALIDATION
  def validate
    validates_presence [:username, :email, :full_name]
  end

  def profile_complete?
    !self.about.blank? and !self.location.blank?
  end

end
