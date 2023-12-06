class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @tests = Test.all
  end
end
