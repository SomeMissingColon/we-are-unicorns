class DonationsController < ApplicationController
  def new
    @project = project
    @donation = Donation.new
    @donation.project = project

    authorize @donation

  end

  def create
    amount = donation_params[:amount].to_i
    donation = Donation.new(amount:amount)
    donation.user = current_user
    donation.project = project

    authorize project
    donation.save!
    redirect_to project_path(project)
  end

  private
  def donation_params
    params.require(:donation).permit(:amount)
  end

  def project
    Project.find(params[:project_id])
  end
end
