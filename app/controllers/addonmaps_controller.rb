class AddonmapsController < ApplicationController
  before_action :set_addonmap, only: [:show, :edit, :update, :destroy]

  # GET /addonmaps
  # GET /addonmaps.json
  def index
    @addonmaps = Addonmap.all
  end

  # GET /addonmaps/1
  # GET /addonmaps/1.json
  def show
  end

  # GET /addonmaps/new
  def new
    @addonmap = Addonmap.new
  end

  # GET /addonmaps/1/edit
  def edit
  end

  # POST /addonmaps
  # POST /addonmaps.json
  def create
    @addonmap = Addonmap.new(addonmap_params)

    respond_to do |format|
      if @addonmap.save
        format.html { redirect_to @addonmap, notice: 'Addonmap was successfully created.' }
        format.json { render :show, status: :created, location: @addonmap }
      else
        format.html { render :new }
        format.json { render json: @addonmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addonmaps/1
  # PATCH/PUT /addonmaps/1.json
  def update
    respond_to do |format|
      if @addonmap.update(addonmap_params)
        format.html { redirect_to @addonmap, notice: 'Addonmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @addonmap }
      else
        format.html { render :edit }
        format.json { render json: @addonmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addonmaps/1
  # DELETE /addonmaps/1.json
  def destroy
    @addonmap.destroy
    respond_to do |format|
      format.html { redirect_to addonmaps_url, notice: 'Addonmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addonmap
      @addonmap = Addonmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addonmap_params
      params.require(:addonmap).permit(:city_name,:latitude, :longitude, :name,:avatar)
  
    end
end
