class ChallengesController < ApplicationController
	before_action :prepare_challenge, only: [:edit, :update, :destroy]

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      redirect_to challenges_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @challenge.update_attributes(challenge_params)
      redirect_to challenges_path
    else
      render :edit
    end
  end

  def destroy
    @challenge.destroy

    redirect_to challenges_path
  end

  private

	def prepare_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :score)
  end

end
