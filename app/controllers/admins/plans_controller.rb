class Admins::PlansController < Admins::ApplicationController
  def index
    @plans = Plan.default_order
  end

  def edit
  end
end
