class ComponentStatusesController < ApplicationController
  before_action :set_component_status, only: [:show, :edit, :update, :destroy]

  # GET /component_statuses
  # GET /component_statuses.json
  def index
    @component_statuses = ComponentStatus.all
  end

  # GET /component_statuses/1
  # GET /component_statuses/1.json
  def show
  end

  # GET /component_statuses/new
  def new
    @component_status = ComponentStatus.new
  end

  # GET /component_statuses/1/edit
  def edit
  end

  # POST /component_statuses
  # POST /component_statuses.json
  def create
    @component_status = ComponentStatus.new(component_status_params)

    respond_to do |format|
      if @component_status.save
        format.html { redirect_to @component_status, notice: 'Component status was successfully created.' }
        format.json { render :show, status: :created, location: @component_status }
      else
        format.html { render :new }
        format.json { render json: @component_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_statuses/1
  # PATCH/PUT /component_statuses/1.json
  def update
    respond_to do |format|
      if @component_status.update(component_status_params)
        format.html { redirect_to @component_status, notice: 'Component status was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_status }
      else
        format.html { render :edit }
        format.json { render json: @component_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_statuses/1
  # DELETE /component_statuses/1.json
  def destroy
    @component_status.destroy
    respond_to do |format|
      format.html { redirect_to component_statuses_url, notice: 'Component status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_status
      @component_status = ComponentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_status_params
      params.require(:component_status).permit(:name, :description, :color)
    end
end
