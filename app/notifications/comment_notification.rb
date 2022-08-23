# To deliver this notification:
#
# CommentNotification.with(post: @post).deliver_later(current_user)
# CommentNotification.with(post: @post).deliver(current_user)

class CommentNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    @post = Post.find(params[:comment][:post_id])
    @comment = Comment.find(params[:comment][:id])
    @user = User.find(@comment.user_id)
    "#{@user.name} commented on #{@post.title.truncate(10)}"
  end
  #

  # a notification has a params column. Then we go through the comment to get the post_id.
  def url
    post_path(Post.find(params[:comment][:post_id]))
  end
end
