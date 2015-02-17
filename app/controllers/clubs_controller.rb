class ClubsController < ApplicationController
  before_action :authenticate

  def index
    @clubs = current_student.clubs
  end

  def show
    @club = Club.find(params[:id])

    if @club.students.include?(current_student)
    else
      render 'public/403', status: 403
  end
end
end
