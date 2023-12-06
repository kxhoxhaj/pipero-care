class DermoestheticsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @dermoesthetics = Dermoesthetic.all
  end
end
