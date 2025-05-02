class Admins::PlansController < Admins::ApplicationController
  before_action :set_plan, only: %i[edit update]

  def index
    @plans = Plan.default_order
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to admins_plans_path, notice: 'プランを更新しました。', status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.expect(plan: %i[name description])
  end
end
