class User < ActiveRecord::Base
  EMAIL_REGEXP = %r!^[\w._]+@[\w_]+\.([\w_]{3,10})(\.([\w_]{2,3})){0,1}$!

  has_many :interests
  accepts_nested_attributes_for :interests

  validates_presence_of :name
  validates_presence_of :email

  validates_uniqueness_of :name
  validates_uniqueness_of :email

  validates_format_of :email, 
    :with => EMAIL_REGEXP, 
    :message => "is invalid"

  def self.a
    User.new :name => 'macskeptic',
      :email => 'macskeptic@gmail.com.br'
  end
end
