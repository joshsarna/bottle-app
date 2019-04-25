class Api::BottlesController < ApplicationController
  before_action :set_api_bottle, only: [:show, :edit, :update, :destroy]

  # GET /api/bottles
  # GET /api/bottles.json
  def index
    @api_bottles = Api::Bottle.all
  end

  # GET /api/bottles/1
  # GET /api/bottles/1.json
  def show
  end

  # GET /api/bottles/new
  def new
    @api_bottle = Api::Bottle.new
  end

  # GET /api/bottles/1/edit
  def edit
  end

  # POST /api/bottles
  # POST /api/bottles.json
  def create
    @api_bottle = Api::Bottle.new(api_bottle_params)

    respond_to do |format|
      if @api_bottle.save
        format.html { redirect_to @api_bottle, notice: 'Bottle was successfully created.' }
        format.json { render :show, status: :created, location: @api_bottle }
      else
        format.html { render :new }
        format.json { render json: @api_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/bottles/1
  # PATCH/PUT /api/bottles/1.json
  def update
    respond_to do |format|
      if @api_bottle.update(api_bottle_params)
        format.html { redirect_to @api_bottle, notice: 'Bottle was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_bottle }
      else
        format.html { render :edit }
        format.json { render json: @api_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/bottles/1
  # DELETE /api/bottles/1.json
  def destroy
    @api_bottle.destroy
    respond_to do |format|
      format.html { redirect_to api_bottles_url, notice: 'Bottle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_bottle
      @api_bottle = Api::Bottle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_bottle_params
      params.require(:api_bottle).permit(:ml, :color)
    end
end
