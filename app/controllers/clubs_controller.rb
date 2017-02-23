class ClubsController < ApplicationController
  before_action :require_login, only: [:show]

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
    authorize! :read, @club
  end

end
