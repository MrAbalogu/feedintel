class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

extend Dragonfly::Model
 
 include Avatarable
 
  mount_uploader :photo, PhotoUploader




  def full_name
    fullname
  end

  # required for avatarable
  def avatar_text
    fullname.split(" ").first.chr
  end

end
