class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update]

  def index
    @q = Profile.ransack(params[:q])
    @profiles_count = @q.result(distinct: true).size
    @profiles = @q.result(distinct: true).paginate(page: params[:page], per_page: 2)
  end

  def edit; end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to root_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:price, :color, :work_type, :user_id, :tatoo_size)
    end
end
