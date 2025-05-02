class PlansController < ApplicationController
  def index
    @plans = Plan.default_order
  end

  def show
  end
end
