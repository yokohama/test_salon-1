module Staffs
  class MembersController < StaffsController
    def index
      @members = Member.all
    end
  end
end


