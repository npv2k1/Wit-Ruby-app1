class IntentsController < ApplicationController
  before_action :set_intent, only: [:show, :edit, :update, :destroy]

  # GET /intents
  # GET /intents.json
  def index
    @intents = Intent.all
  end

  # GET /intents/1
  # GET /intents/1.json
  def show
  end

  # GET /intents/new
  def new
    @intent = Intent.new
  end

  # GET /intents/1/edit
  def edit
  end

  # POST /intents
  # POST /intents.json
  def create
    @intent = Intent.new(intent_params)

    respond_to do |format|
      if @intent.save
        format.html { redirect_to @intent, notice: 'Intent was successfully created.' }
        format.json { render :show, status: :created, location: @intent }
      else
        format.html { render :new }
        format.json { render json: @intent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intents/1
  # PATCH/PUT /intents/1.json
  def update
    respond_to do |format|
      if @intent.update(intent_params)
        format.html { redirect_to @intent, notice: 'Intent was successfully updated.' }
        format.json { render :show, status: :ok, location: @intent }
      else
        format.html { render :edit }
        format.json { render json: @intent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intents/1
  # DELETE /intents/1.json
  def destroy
    @intent.destroy
    respond_to do |format|
      format.html { redirect_to intents_url, notice: 'Intent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intent
      @intent = Intent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intent_params
      params.require(:intent).permit(:intent)
    end
end
