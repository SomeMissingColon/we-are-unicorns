class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @projects = Project.all
  end
end
