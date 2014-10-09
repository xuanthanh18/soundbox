class AudiopostsController < ApplicationController
  before_action :set_audiopost, only: [:show, :edit, :update, :destroy]

  # GET /audioposts
  # GET /audioposts.json
  def index
    @audioposts = Audiopost.all
  end

  # GET /audioposts/1
  # GET /audioposts/1.json
  def show
  end

  # GET /audioposts/new
  def new
    @audiopost = Audiopost.new
  end

  # GET /audioposts/1/edit
  def edit
  end

  # POST /audioposts
  # POST /audioposts.json
  def create
    @audiopost = Audiopost.new(audiopost_params)

    respond_to do |format|
      if @audiopost.save
        format.html { redirect_to @audiopost, notice: 'Audiopost was successfully created.' }
        format.json { render :show, status: :created, location: @audiopost }
      else
        format.html { render :new }
        format.json { render json: @audiopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audioposts/1
  # PATCH/PUT /audioposts/1.json
  def update
    respond_to do |format|
      if @audiopost.update(audiopost_params)
        format.html { redirect_to @audiopost, notice: 'Audiopost was successfully updated.' }
        format.json { render :show, status: :ok, location: @audiopost }
      else
        format.html { render :edit }
        format.json { render json: @audiopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audioposts/1
  # DELETE /audioposts/1.json
  def destroy
    @audiopost.destroy
    respond_to do |format|
      format.html { redirect_to audioposts_url, notice: 'Audiopost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audiopost
      @audiopost = Audiopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audiopost_params
      params[:audiopost]
    end
end
