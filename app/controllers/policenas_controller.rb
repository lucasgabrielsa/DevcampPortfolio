class PolicenasController < ApplicationController
  before_action :set_policena, only: [:show, :edit, :update, :destroy]

  # GET /policenas
  # GET /policenas.json
  def index
    @policenas_items = Policena.all
  end

  # GET /policenas/1
  # GET /policenas/1.json
  def show
  end

  # GET /policenas/new
  def new
    @policena = Policena.new
  end

  # GET /policenas/1/edit
  def edit
  end

  # POST /policenas
  # POST /policenas.json
  def create
    @policena = Policena.new(policena_params)

    respond_to do |format|
      if @policena.save
        format.html { redirect_to @policena, notice: 'Policena was successfully created.' }
        format.json { render :show, status: :created, location: @policena }
      else
        format.html { render :new }
        format.json { render json: @policena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policenas/1
  # PATCH/PUT /policenas/1.json
  def update
    respond_to do |format|
      if @policena.update(policena_params)
        format.html { redirect_to @policena, notice: 'Policena was successfully updated.' }
        format.json { render :show, status: :ok, location: @policena }
      else
        format.html { render :edit }
        format.json { render json: @policena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policenas/1
  # DELETE /policenas/1.json
  def destroy
    @policena.destroy
    respond_to do |format|
      format.html { redirect_to policenas_url, notice: 'Policena was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policena
      @policena = Policena.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policena_params
      params.require(:policena).permit(:name, :idade, :comentario)
    end
end
