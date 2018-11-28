class CommentsController < ApplicationController
  before_action :set_topic

  # get
  def new
    @comment = Comment.new
  end

  # post
  def create
    @comment = @topic.comments.new(comment_params)
  end 

  private 
    def comment_params
      params.require(:comment).permit(:body, :author)
    end 

    def set_topic
      @topic = Topic.find(params[:id])
    end 

end
