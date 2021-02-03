module Members
  class MembersController < ApplicationController
    before_action :login_check

    private

    def login_check
      unless member_signed_in?
        flash[:alert] = "ログインしてください"
        redirect_to new_member_session_path
      end
    end

  end
end
