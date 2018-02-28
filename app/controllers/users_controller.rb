class UsersController < ApplicationController
  before_action :authorize_user
  def projects
  end

  def donations
  end

  def profile
    given_sum = 0
    @current_user.donations.map do |donation|
      given_sum += donation.ammount
    end

    @total_given_dollars = given_sum

    received_sum = 0

    @current_user.projects.map do |project|
      project.donations.map do |donation|
        if donation.status == "accept"
          received_sum += donation.amount
        end
      end
    end

    @total_given_dollars = given_sum
    @total_received_dollars = received_sum


    created_project = 0
    @current_user.projects.map do |project|
      created_project += 1
    end

    given_project = 0
    @current_user.donations.map do |project|
     given_project += 1
   end

   @total_given_dollars = given_sum
   @total_received_dollars = received_sum
   @total_created_project = created_project
   @total_given_project = given_project
 end




    # @total_reiceved_dollars
    # @total_project_number
    # @total_project_given
    # @total_project_received

    private
    def authorize_user
      authorize current_user
    end

    def current_user_project
      @current_user_donations = Donation.where(user:current_user)
    end

  end
