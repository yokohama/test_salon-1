module Members
  class ProfilesController < MembersController
   
    def show
    end
    
    def edit
    end


    def update
      if current_member.update(member_params)
        redirect_to members_profiles_path, notice: '編集しました'
      else
        render :edit
      end
    end

    private
    def member_params
      params.require(:member).permit(:nickname)
    end
  end
end