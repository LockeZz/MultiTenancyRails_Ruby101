require_dependency "subscribem/application_controller"

module Subscribem
  class AccountsController < ApplicationController

    def index 

    end

    def new 
      @account = Subscribem::Account.new
      @account.build_owner
    end

    def create 
      account = Subscribem::Account.create(account_params)
      # reach out to warden to create an owner object within User
      p account.owner
      request.env["warden"].set_user(account.owner, :scope => :user)
      # then reach out to warden again to have the owner created store inside account
      request.env["warden"].set_user(account, :scope => :account)
      flash[:success] = "Your account has been successfully created."
      redirect_to subscribem.root_url
    end

    private 

      def account_params 
        params.require(:account).permit(:name, {:owner_attributes => [
          :email, :password, :password_confirmation
        ]})
      end

  end
end
