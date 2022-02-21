class ApplicationsController < ApplicationController
  before_action :set_application, only: %i[ show update destroy ]

  # GET /applications
  def index
    @applications = Application.all

    render json: @applications
  end

  # GET /applications/1
  def show
    @application = Application.find_by(token: params[:token])
    render json: @application
  end

  # POST /applications
  def create
    @application = Application.new(application_params)
    

    if @application.save
      render json: @application, status: :created
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /applications/1
  def update
    if @application.update(application_params)
      render json: @application
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  
  # def destroy
  #   @application.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find_by(token: params[:token])
    end

    # Only allow a list of trusted parameters through.
    def application_params
      params.require(:application).permit(:token,:name)
    end
end
