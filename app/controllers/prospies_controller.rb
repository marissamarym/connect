class ProspiesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_prospy, only: [:show, :edit, :update, :destroy]

  # GET /prospies
  # GET /prospies.json
  def index
    @prospies = Prospie.all
  end

  # GET /prospies/1
  # GET /prospies/1.json
  def show
  end

  # GET /prospies/new
  def new
    @prospy = Prospie.new
  end

  # GET /prospies/1/edit
  def edit
  end

  # POST /prospies
  # POST /prospies.json
  def create
    @prospy = Prospie.new(prospy_params)

    respond_to do |format|
      if @prospy.save
        format.html { redirect_to @prospy, notice: 'Prospie was successfully created.' }
        format.json { render :show, status: :created, location: @prospy }
      else
        format.html { render :new }
        format.json { render json: @prospy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospies/1
  # PATCH/PUT /prospies/1.json
  def update
    respond_to do |format|
      if @prospy.update(prospy_params)
        format.html { redirect_to @prospy, notice: 'Prospie was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospy }
      else
        format.html { render :edit }
        format.json { render json: @prospy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospies/1
  # DELETE /prospies/1.json
  def destroy
    @prospy.destroy
    respond_to do |format|
      format.html { redirect_to prospies_url, notice: 'Prospie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospy
      @prospy = Prospie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospy_params
      params.require(:prospy).permit(:user_id)
    end
end
