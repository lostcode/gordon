class QuantitiesController < ApplicationController
  before_action :set_quantity, only: [:show, :edit, :update, :destroy]

  # GET /quantities
  def index
    @quantities = Quantity.all
  end

  # GET /quantities/1
  def show
  end

  # GET /quantities/new
  def new
    @quantity = Quantity.new
  end

  # GET /quantities/1/edit
  def edit
  end

  # POST /quantities
  def create
    @quantity = Quantity.new(quantity_params)

    if @quantity.save
      redirect_to @quantity, notice: 'Quantity was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /quantities/1
  def update
    if @quantity.update(quantity_params)
      redirect_to @quantity, notice: 'Quantity was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /quantities/1
  def destroy
    @quantity.destroy
    redirect_to quantities_url, notice: 'Quantity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantity
      @quantity = Quantity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quantity_params
      params.require(:quantity).permit(:amount)
    end
end
