class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @user = current_user
  end

  def create
    current_user.tweets.create(tweet_params)
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end
end
