class Verifier < ActiveRecord::Base
  attr_reader :authentication_code
  belongs_to :member

  before_save :generate_code

  def confirm!
    self.update_attribute :verified_at, Time.now
  end

  private
  def generate_code
    self.code ||= rand(10 ** 10).to_s.rjust(6,'0')
  end
end
