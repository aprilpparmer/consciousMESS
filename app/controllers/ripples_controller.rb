class RipplesController < ApplicationController
  before_action :set_ripple, only: [:show]

  # GET /ripples
  # GET /ripples.json
  def index
    @ripples = Ripple.all
  end

  # GET /ripples/1
  # GET /ripples/1.json
  def show
  end

  # GET /ripples/new
  def new
    @ripple = Ripple.new
  end

  # POST /ripples
  # POST /ripples.json
  def create
    @ripple = Ripple.new(ripple_params)

    respond_to do |format|
      if @ripple.save
        format.html { redirect_to ripples_url }
        format.json { render :show, status: :created, location: @ripple }
      else
        format.html { render :new }
        format.json { render json: @ripple.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ripple
      @ripple = Ripple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ripple_params
      params.require(:ripple).permit(:username, :username_url, :message)
    end
end
