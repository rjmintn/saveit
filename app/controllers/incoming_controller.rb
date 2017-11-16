class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  # Find the user by using params[:sender]
  # Find the topic by using params[:subject]
  # Assign the url to a variable after retreiving it from params["body-plain"]
  # Validate user
  # build and save a new bookmark
  def create
    puts "incoming params here: #{params}"
    @user = params[:sender]
    @topic = params[:subject]
    @url = params["body-plain"]

    if @user = User.where(email: @user).first

    end 
    head 200

  end

  def create_bookmark
    @bookmark_contoller = BookmarksController.new
    @topic_controller = TopicsController.new

  end
end
