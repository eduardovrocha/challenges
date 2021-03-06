class UrlShortenersController < ApplicationController
  before_action :set_url_shortener, only: %i[ show edit update destroy ]

  # GET /url_shorteners or /url_shorteners.json
  def index
    @url_shorteners = UrlShortener.all
  end

  # GET /url_shorteners/1 or /url_shorteners/1.json
  def show
  end

  # GET /url_shorteners/new
  def new
    @url_shortener = UrlShortener.new
  end

  # GET /url_shorteners/1/edit
  def edit
  end

  # POST /url_shorteners or /url_shorteners.json
  def create
    @url_shortener = UrlShortener.new(url_shortener_params)

    respond_to do |format|
      if @url_shortener.save
        format.html { redirect_to url_shortener_url(@url_shortener), notice: "Url shortener was successfully created." }
        format.json { render :show, status: :created, location: @url_shortener }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @url_shortener.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_shorteners/1 or /url_shorteners/1.json
  def update
    respond_to do |format|
      if @url_shortener.update(url_shortener_params)
        format.html { redirect_to url_shortener_url(@url_shortener), notice: "Url shortener was successfully updated." }
        format.json { render :show, status: :ok, location: @url_shortener }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @url_shortener.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_shorteners/1 or /url_shorteners/1.json
  def destroy
    @url_shortener.destroy

    respond_to do |format|
      format.html { redirect_to url_shorteners_url, notice: "Url shortener was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_shortener
      @url_shortener = UrlShortener.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def url_shortener_params
      params.require(:url_shortener).permit(:url_given, :url_shortened)
    end
end
