class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    @old_user = User.where(username: resource.username).or(User.where(email: resource.email)).first
    if @old_user
      sign_in(@old_user)
      redirect_to root_path
    else
      if resource.username?
        resource.email = "#{resource.username}_#{rand(0..999999)}@tatoo-master.com"
        resource.password_confirmation = resource.password
      end
      if resource.save
        sign_in(resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        clean_up_passwords resource
        respond_with resource
      end
    end
  end
  protected

  def after_sign_up_path_for(resource)
    root_url
  end
end