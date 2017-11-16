class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  # Find the user by using params[:sender]
  # Find the topic by using params[:subject]
  # Assign the url to a variable after retreiving it from params["body-plain"]
  # Validate user
  # build and save a new bookmark
  def create
    puts "incoming params here: #{params}"

    head 200

  end
end
