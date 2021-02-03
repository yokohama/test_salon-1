module Staffs
  class StaffsController < ApplicationController
    before_action :login_check
    
    private
  
    def login_check
      unless staff_signed_in?
        flash[:alert] = "ログインしてください"
        redirect_to new_staff_session_path
      end
    end

  end
end
