# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  private
  def params
  	params(:user).permit(:first_name, :last_name, :address)
  end
end