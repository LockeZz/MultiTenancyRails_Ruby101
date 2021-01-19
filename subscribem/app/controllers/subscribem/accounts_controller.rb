require_dependency "subscribem/application_controller"

module Subscribem
  class AccountsController < ApplicationController

    def index 

    end

    def new 
      @account = Subscribem::Account.new
    end
  end
end
