class Topic < ApplicationRecord
  validates :user_id, presence:true
  validates :description,presence:true
  validates :image,presence:true 
  
  belongs_to :user
  
  mount_uploader :image,ImageUploader
  
  has_many :favorites,dependent: :destroy
  
  has_many :favorite_users,through: :favorites,source: "user"
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
