require_dependency "subscribem/application_controller"

module Subscribem
  class Account::DashboardController < ApplicationController
    before_action :authenticate_user!
    
  end
end
