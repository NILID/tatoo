class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]

  def index
    @q = Profile.ransack(params[:q])
    @profiles = @q.result(distinct: true)
  end

  def show; end
  def edit; end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
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
