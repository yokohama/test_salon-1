module Staffs
  class MembersController < StaffsController

    def index
      @q = Member.ransack(params[:q])
      @members = @q.result.page(params[:page]).per(5)
      @results = @q.result
      @query = params[:q]
    end

  end
end


