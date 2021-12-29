class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update]
    before_action :authenticate_user!

    def show
        @user = User.find(params[:id])
    end 

    def edit
        authorize @user
    end

    def index
        if current_user.has_role?(:admin)
            @users = User.all
            @proposals = Proposal.all
            @requests = Request.all
           

        else
            redirect_to root_path
        end
    end

    def update
        authorize @user
        if @user.update(user_params)
        redirect_to users_path, notice: 'User role was successfully updates.'
        else
            render :edit
        end
    end
    
    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit({role_ids: []}, :photo, :skills)
    end
end