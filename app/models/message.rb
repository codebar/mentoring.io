class Message < ActiveRecord::Base
  belongs_to :member
  belongs_to :classified
  belongs_to :message

  validates_length_of :text, :minimum => 10

end
