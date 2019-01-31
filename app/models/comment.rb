class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_id=(user_id)
    @user = User.find(user_id)
    @user.comments << self
  end
end
