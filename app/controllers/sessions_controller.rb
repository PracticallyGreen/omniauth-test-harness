class SessionsController < ApplicationController
  def index
    @strategies = OmniAuth.strategies
  end

  def create
    unless params['SAMLResponse'].blank?
      Rails.logger.info Base64.decode64(params['SAMLResponse'])
    end

    @omniauth = request.env['omniauth.auth'].to_hash
    flash.now[:notice] = "OmniAuth authentication successful."
  end

  def failure
    flash.now[:error] = "OmniAuth authentication failed."
  end
end
