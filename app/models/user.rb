class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :posts, dependent: :destroy

  validates :username, :email, :password,  presence: true
  
  has_many :likes, dependent: :destroy

  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

  def self.guest
    find_or_create_by!(username: 'ゲスト', email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

end
