module Staffs
  class MembersController < StaffsController
    before_action :set_q, only: [:index, :search]

    def index
      @members = Member.all.page(params[:page]).per(5)
    end

    def search
      # raise t('.blank').inspect
      if params[:q]['id_eq'] == "" && params[:q]['nickname_cont'] == "" && params[:q]['email_cont'] == ""
        redirect_to staffs_members_path alert: t('.blank')
      elsif @q.result.present?
        @results = @q.result.page(params[:page]).per(5)
      else
        redirect_to staffs_members_path
      end
    end

  private

  def set_q
    @q = Member.ransack(params[:q])
  end
    
  end
end


