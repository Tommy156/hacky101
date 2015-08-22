class RespsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_action :set_resp, only: [:show, :edit, :update, :destroy]

  # GET /resps
  # GET /resps.json
  def index
    @resps = Resp.all
  end

  # GET /resps/1
  # GET /resps/1.json
  def show
    respond_to do |format|
        format.html 
        format.json { render :text => "Fuck!"}
    end
  end

  # GET /resps/new
  def new
    @resp = Resp.new
  end

  # GET /resps/1/edit
  def edit
  end

  # POST /resps
  # POST /resps.json
  def create
    @resp = Resp.new(resp_params)

    respond_to do |format|
      if @resp.save
        format.html { redirect_to @resp, notice: 'Resp was successfully created.' }
        format.json { render :show, status: :created, location: @resp }
      else
        format.html { render :new }
        format.json { render json: @resp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resps/1
  # PATCH/PUT /resps/1.json
  def update
    respond_to do |format|
      if @resp.update(resp_params)
        format.html { redirect_to @resp, notice: 'Resp was successfully updated.' }
        format.json { render :show, status: :ok, location: @resp }
      else
        format.html { render :edit }
        format.json { render json: @resp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resps/1
  # DELETE /resps/1.json
  def destroy
    @resp.destroy
    respond_to do |format|
      format.html { redirect_to resps_url, notice: 'Resp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resp
      @resp = Resp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resp_params
      params.permit(:name, :heart_beat, :latitude, :longitude)
    end
end
