class Admins::IngredientSetsController < Admins::ApplicationController
  before_action :set_ingredient_set, only: %i[edit update]

  def index
    @ingredient_sets = IngredientSet.default_order
  end

  def new
    @ingredient_set = IngredientSet.new
  end
  
  def create
    @ingredient_set = IngredientSet.new(ingredient_set_params)
    if @ingredient_set.save
      redirect_to admins_ingredient_sets_url, notice: '食材セットを作成しました。', status: :see_other
    else
      render :new, status: :unprocessable_content
    end
  end

  def edit
  end
  
  def update
    if @ingredient_set.update(ingredient_set_params)
      redirect_to edit_admins_ingredient_set_url(@ingredient_set), notice: '食材セットを更新しました。'
    else
      render :edit, status: :unprocessable_content
    end
  end
  
  private
  
  def set_ingredient_set
    @ingredient_set = IngredientSet.find(params[:id])
  end
  
  def ingredient_set_params
    params.expect(ingredient_set: %i[name price content weight refrigerated allergy_info])
  end
end
