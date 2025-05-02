class PlansController < ApplicationController
  before_action :set_plan, only: %i[show]

  def index
    @plans = Plan.default_order
  end

  def show
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
