class WelcomeController < ApplicationController
  skip_before_action :authorize
  def index
  	 @properties= Property.where(enabled: '1').limit(300)
  end
end
