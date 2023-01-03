class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    resource.widgets.count.zero? ? new_widget_path : dashboard_path
	end

  def maybe_skip_onboarding
    redirect_to dashboard_path, notice: "You're already subscribed" if current_user.paying_customer?
  end
end
