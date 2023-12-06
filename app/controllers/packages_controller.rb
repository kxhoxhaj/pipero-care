class PackagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_package, only: %i[show]
  def index
    @packages = Package.all
  end

  def show
  end
end

private

def find_package
  @package = Package.find(params[:id])
end
