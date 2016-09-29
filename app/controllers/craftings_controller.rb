class CraftingsController < ApplicationController
  before_action :set_crafting, only: [:show, :edit, :update, :destroy]

  # GET /craftings
  # GET /craftings.json
  def index
    @craftings = Crafting.all
  end

  # GET /craftings/1
  # GET /craftings/1.json
  def show
  end

  # GET /craftings/new
  def new
    @crafting = Crafting.new
  end

  # GET /craftings/1/edit
  def edit
  end

  # POST /craftings
  # POST /craftings.json
  def create
    @crafting = Crafting.new(crafting_params)

    respond_to do |format|
      if @crafting.save
        format.html { redirect_to @crafting, notice: 'Crafting was successfully created.' }
        format.json { render :show, status: :created, location: @crafting }
      else
        format.html { render :new }
        format.json { render json: @crafting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /craftings/1
  # PATCH/PUT /craftings/1.json
  def update
    respond_to do |format|
      if @crafting.update(crafting_params)
        format.html { redirect_to @crafting, notice: 'Crafting was successfully updated.' }
        format.json { render :show, status: :ok, location: @crafting }
      else
        format.html { render :edit }
        format.json { render json: @crafting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /craftings/1
  # DELETE /craftings/1.json
  def destroy
    @crafting.destroy
    respond_to do |format|
      format.html { redirect_to craftings_url, notice: 'Crafting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crafting
      @crafting = Crafting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crafting_params
      params.require(:crafting).permit(:title, :description, :image)
    end
end
