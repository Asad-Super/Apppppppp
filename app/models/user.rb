class User < ApplicationRecord
   # has_many :posts
   validates :password,:email, presence:true
   validate :validate_email


  def validate_email
     return if email.nil?
  end

end
