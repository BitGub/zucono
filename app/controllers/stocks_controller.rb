class StocksController < ApplicationController

def index
    @products = Product.all.includes(:stocks)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to @stock, notice: 'Stock was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stock }
      else
        format.html { render action: 'new' }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
  
	def update_current      
    @stock_params = params[:stock]
      @stock_params.each do |stock_params|
        params.permit(:current_stock, :product_id)
        @stock = Stock.new(stock_params)
        @stock.save
      end
    redirect_to stocks_path, notice: 'Stocks were successfully updated'
  end        


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.where(:id => params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def stock_params
    #   params.require(:stock).permit([:current_stock, :product_id])
    # end
end