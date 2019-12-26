class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: [:edit, :update, :show, :destroy]

    # GET /porfolios
    def index
        @portfolio_items = Portfolio.all
    end

    # GET /portfolios/new
    def new
        @portfolio_item = Portfolio.new
    end

    # POST /portfolios
    def create
        @portfolio_item = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }            
          else
            format.html { render :new }
          end
        end
    end

    # GET /portfolios/#{id}/edit
    def edit        
    end

    # PATCH/PUT /portfolios/1    
    def update
        respond_to do |format|
        if @portfolio_item.update(portfolio_params)
            format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }            
        else
            format.html { render :edit }            
        end
        end
    end

    # DELETE - /portfolio/1
    def destroy 
      @portfolio_item.destroy 
      redirecionar_to_index('Portfolio was successfully deleted')
      # respond_to do |format|
      #   format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully deleted' }
      # end
    end

    # GET /portfolio/1/show
    def show
    end

    private 
    # Use callbacks to share common setup or constraints between actions
    def set_portfolio
        @portfolio_item = Portfolio.find(params[:id])
    end

    def redirecionar_to_index(message)
      respond_to do |format|
        format.html { redirect_to portfolios_path, notice: message }
      end
    end
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
