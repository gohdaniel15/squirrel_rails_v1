class ChallengesController < ApplicationController
	
	def index
		@challenges = Challenge.all
	end

	def new
		@challenge = Challenge.new
	end

	def create
		@challenge = Challenge.new(challenge_params)
		@challenge.save

		redirect_to challenges_path
	end

	def destroy
		@challenge = Challenge.find(params[:id])
		@challenge.destroy

		redirect_to challenges_path
	end

	private
	def challenge_params
		  params.require(:challenge).permit(:title, :description, :score)
	end	

end
