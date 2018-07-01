class Api::AminasController < ApplicationController
  before_action :set_amina, only: [:show, :edit, :update, :destroy]

  # GET /aminas
  # GET /aminas.json
  def index
    @aminas = Amina.all
  end

  # GET /aminas/1
  # GET /aminas/1.json
  def show
  end

  # GET /aminas/new
  def new
    @amina = Amina.new
  end

  # GET /aminas/1/edit
  def edit
  end

  # POST /aminas
  # POST /aminas.json
  def create
    @amina = Amina.new(amina_params)

    respond_to do |format|
      if @amina.save
        format.html { redirect_to @amina, notice: 'Amina was successfully created.' }
        format.json { render :show, status: :created, location: @amina }
      else
        format.html { render :new }
        format.json { render json: @amina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aminas/1
  # PATCH/PUT /aminas/1.json
  def update
    respond_to do |format|
      if @amina.update(amina_params)
        format.html { redirect_to @amina, notice: 'Amina was successfully updated.' }
        format.json { render :show, status: :ok, location: @amina }
      else
        format.html { render :edit }
        format.json { render json: @amina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aminas/1
  # DELETE /aminas/1.json
  def destroy
    @amina.destroy
    respond_to do |format|
      format.html { redirect_to aminas_url, notice: 'Amina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amina
      @amina = Amina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amina_params
      params.require(:amina).permit(:email)
    end
end
