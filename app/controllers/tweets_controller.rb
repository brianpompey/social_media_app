class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @user = current_user
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render 'new'
    end
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
    params.require(:tweets).permit(:content)
  end
end
