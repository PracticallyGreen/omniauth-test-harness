class SessionsController < ApplicationController
  def index
    @strategies = OmniAuth.strategies
  end

  def create
    unless params['SAMLResponse'].blank?
      decoded = Base64.decode64(params['SAMLResponse'])
      saml_assertion = SamlAssertion.create(:saml_response => decoded)
      Rails.logger.info "saved SamlAssertion id #{saml_assertion.id}"
      Rails.logger.info decoded
    end

    @omniauth = request.env['omniauth.auth'].to_hash
    flash.now[:notice] = "OmniAuth authentication successful."
  end

  def failure
    flash.now[:error] = "OmniAuth authentication failed."
  end
end
