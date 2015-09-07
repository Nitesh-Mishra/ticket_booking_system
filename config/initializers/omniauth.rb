OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	
	provider :facebook, "607791652685571" , "e74aedfcd18173bf55881105ef0a62cb"

end	

