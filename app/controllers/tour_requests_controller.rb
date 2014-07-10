class TourRequestsController < ApplicationController
  before_action :set_tour_request, only: [:show, :edit, :update, :destroy]

  # GET /tour_requests
  # GET /tour_requests.json
  def index
    @tour_requests = TourRequest.all
  end

  # GET /tour_requests/1
  # GET /tour_requests/1.json
  def show
  end

  # GET /tour_requests/new
  def new
    @tour_request = TourRequest.new
  end

  # GET /tour_requests/1/edit
  def edit
  end

  # POST /tour_requests
  # POST /tour_requests.json
  def create
    @tour_request = TourRequest.new(tour_request_params)

    respond_to do |format|
      if @tour_request.save
        format.html { redirect_to @tour_request, notice: 'Tour request was successfully created.' }
        format.json { render :show, status: :created, location: @tour_request }
      else
        format.html { render :new }
        format.json { render json: @tour_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_requests/1
  # PATCH/PUT /tour_requests/1.json
  def update
    respond_to do |format|
      if @tour_request.update(tour_request_params)
        format.html { redirect_to @tour_request, notice: 'Tour request was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_request }
      else
        format.html { render :edit }
        format.json { render json: @tour_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_requests/1
  # DELETE /tour_requests/1.json
  def destroy
    @tour_request.destroy
    respond_to do |format|
      format.html { redirect_to tour_requests_url, notice: 'Tour request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_request
      @tour_request = TourRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_request_params
      params.require(:tour_request).permit(:guide_id, :type, :visit_id)
    end
end
