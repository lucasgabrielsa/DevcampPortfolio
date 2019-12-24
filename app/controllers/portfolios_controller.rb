class PortfoliosController < ApplicationController
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



    private 
    # Never trust parameters from the scary internet, only allow the white list through.
      def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
      end

end
