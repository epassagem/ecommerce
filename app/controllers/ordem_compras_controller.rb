class OrdemComprasController < ApplicationController
  before_action :set_ordem_compra, only: [:show, :edit, :update, :destroy]

  # GET /ordem_compras
  # GET /ordem_compras.json
  def index
    @ordem_compras = OrdemCompra.all
  end

  # GET /ordem_compras/1
  # GET /ordem_compras/1.json
  def show
  end

  # GET /ordem_compras/new
  def new
    @ordem_compra = OrdemCompra.new
    
    
    
    
  end

  # GET /ordem_compras/1/edit
  def edit
  end

  # POST /ordem_compras
  # POST /ordem_compras.json
  def create
    @ordem_compra = OrdemCompra.new(ordem_compra_params)

    respond_to do |format|
      if @ordem_compra.save
        format.html { redirect_to @ordem_compra, notice: 'Ordem compra was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ordem_compra }
      else
        format.html { render action: 'new' }
        format.json { render json: @ordem_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordem_compras/1
  # PATCH/PUT /ordem_compras/1.json
  def update
    respond_to do |format|
      if @ordem_compra.update(ordem_compra_params)
        format.html { redirect_to @ordem_compra, notice: 'Ordem compra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ordem_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordem_compras/1
  # DELETE /ordem_compras/1.json
  def destroy
    @ordem_compra.destroy
    respond_to do |format|
      format.html { redirect_to ordem_compras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_compra
      @ordem_compra = OrdemCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordem_compra_params
      params.require(:ordem_compra).permit(:order_id, :name, :email, :address_zipcode, :address_street, :address_number, :address_complement, :address_neighbourhood, :address_city, :address_state, :address_country, :phone_area_code, :phone_number)
    end
end
