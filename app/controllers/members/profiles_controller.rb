module Members
  class ProfilesController < MembersController
   
    def edit
      @member = current_member
    end

    def show
      @member = current_member
    end

    def update
      @member.update(member_params)
      if @member.valid?
        @member.save
        redirect_to members_profiles_path, notice: '編集しました'
      else
        render :edit
      end
    end

    private
    def member_params
      params.require(:member).permit(:nickname, :email)
    end
  end
end


