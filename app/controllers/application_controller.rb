class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # include Pundit

  # Pundit: white-list approach.
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?

  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end

  private

  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def set_client
    @client = IEX::Api::Client.new(
      publishable_token: ENV['IEX_API_PUBLISHABLE_TOKEN'],
      secret_token: ENV['IEX_API_SECRET_TOKEN'],
      endpoint: 'https://cloud.iexapis.com/v1'
    )
  end

end
