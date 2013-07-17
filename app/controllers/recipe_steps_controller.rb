class RecipeStepsController < ApplicationController
  before_action :set_recipe_step, only: [:show, :edit, :update, :destroy]

  # GET /recipe_steps
  def index
    @recipe_steps = RecipeStep.all
  end

  # GET /recipe_steps/1
  def show
  end

  # GET /recipe_steps/new
  def new
    @recipe_step = RecipeStep.new
  end

  # GET /recipe_steps/1/edit
  def edit
  end

  # POST /recipe_steps
  def create
    @recipe_step = RecipeStep.new(recipe_step_params)

    if @recipe_step.save
      redirect_to @recipe_step, notice: 'Recipe step was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /recipe_steps/1
  def update
    if @recipe_step.update(recipe_step_params)
      redirect_to @recipe_step, notice: 'Recipe step was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /recipe_steps/1
  def destroy
    @recipe_step.destroy
    redirect_to recipe_steps_url, notice: 'Recipe step was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_step
      @recipe_step = RecipeStep.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_step_params
      params.require(:recipe_step).permit(:recipe_id, :step_id)
    end
end
