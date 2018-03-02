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

  def update
    @donation = donation

    authorize donation
    @new_status = params.require(:donation).permit(:status)[:status]
    donation.update!(status: @new_status)

  end

  private
  def donation_params
    params.require(:donation).permit(:amount)
  end

  def project
    Project.find(params[:project_id])
  end

  def donation
    Donation.find(params[:id])
  end
end
