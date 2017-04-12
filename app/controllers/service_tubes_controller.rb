class ServiceTubesController < ApplicationController
  before_action :set_service_tube, only: [:show, :edit, :update, :destroy]

  # GET /service_tubes
  # GET /service_tubes.json
  def index
    @service_tubes = ServiceTube.all
  end

  # GET /service_tubes/1
  # GET /service_tubes/1.json
  def show
  end

  # GET /service_tubes/new
  def new
    @service_tube = ServiceTube.new
  end

  # GET /service_tubes/1/edit
  def edit
  end

  # POST /service_tubes
  # POST /service_tubes.json
  def create
    @service_tube = ServiceTube.new(service_tube_params)

    respond_to do |format|
      if @service_tube.save
        format.html { redirect_to @service_tube, notice: 'Service tube was successfully created.' }
        format.json { render :show, status: :created, location: @service_tube }
      else
        format.html { render :new }
        format.json { render json: @service_tube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_tubes/1
  # PATCH/PUT /service_tubes/1.json
  def update
    respond_to do |format|
      if @service_tube.update(service_tube_params)
        format.html { redirect_to @service_tube, notice: 'Service tube was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_tube }
      else
        format.html { render :edit }
        format.json { render json: @service_tube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_tubes/1
  # DELETE /service_tubes/1.json
  def destroy
    @service_tube.destroy
    respond_to do |format|
      format.html { redirect_to service_tubes_url, notice: 'Service tube was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_tube
      @service_tube = ServiceTube.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_tube_params
      params.require(:service_tube).permit(:name)
    end
end
