class ApplesController < ApplicationController
  before_action :set_apple, only: [:show, :edit, :update, :destroy]

  def create
    @apple = Apple.new(apple_params)

    respond_to do |format|
      if @apple.save
        format.html { redirect_to @apple, notice: 'Apple was successfully created.' }
        format.json { render :show, status: :created, location: @apple }
      else
        format.html { render :new }
        format.json { render json: @apple.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apple
      @apple = Apple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apple_params
      params.fetch(:apple, {})
    end
end
