class Game < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true

   belongs_to :user
   has_many :post_comments, dependent: :destroy
   has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
