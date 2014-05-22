class Api::V1::BaseController < ActionController::Metal

  include AbstractController::Rendering

  include ActionController::Head
  include ActionController::Rendering
  include ActionController::Renderers::All
  include ActionController::ImplicitRender
  include ActionController::ConditionalGet
  include ActionController::Serialization
  include ActionController::MimeResponds
  include ActionController::StrongParameters

  include ActionController::UrlFor
  include Rails.application.routes.url_helpers

  # Before callbacks should also be executed the earliest as possible, so
  # also include them at the bottom.
  include AbstractController::Callbacks

  include Doorkeeper::Helpers::Filter

  doorkeeper_for :all

  respond_to :json

  private

  def current_user
    if doorkeeper_token
      @current_user ||= User.find(doorkeeper_token.resource_owner_id)
    end
  end
end
