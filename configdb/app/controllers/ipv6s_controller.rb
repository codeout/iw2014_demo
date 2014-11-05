class Ipv6sController < ApplicationController
  before_action :set_ipv6, only: [:show, :edit, :update, :destroy]

  # GET /ipv6s
  # GET /ipv6s.json
  def index
    @ipv6s = Ipv6.all
  end

  # GET /ipv6s/1
  # GET /ipv6s/1.json
  def show
  end

  # GET /ipv6s/new
  def new
    @ipv6 = Ipv6.new
  end

  # GET /ipv6s/1/edit
  def edit
  end

  # POST /ipv6s
  # POST /ipv6s.json
  def create
    @ipv6 = Ipv6.new(ipv6_params)

    respond_to do |format|
      if @ipv6.save
        format.html { redirect_to @ipv6, notice: 'Ipv6 was successfully created.' }
        format.json { render :show, status: :created, location: @ipv6 }
      else
        format.html { render :new }
        format.json { render json: @ipv6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipv6s/1
  # PATCH/PUT /ipv6s/1.json
  def update
    respond_to do |format|
      if @ipv6.update(ipv6_params)
        format.html { redirect_to @ipv6, notice: 'Ipv6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipv6 }
      else
        format.html { render :edit }
        format.json { render json: @ipv6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipv6s/1
  # DELETE /ipv6s/1.json
  def destroy
    @ipv6.destroy
    respond_to do |format|
      format.html { redirect_to ipv6s_url, notice: 'Ipv6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipv6
      @ipv6 = Ipv6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipv6_params
      params.require(:ipv6).permit(:gigabit_ethernet_id, :address, :primary)
    end
end
