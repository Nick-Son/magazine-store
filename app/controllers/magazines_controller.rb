class MagazinesController < ApplicationController
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  # GET /magazines
  # GET /magazines.json
  def index
    @magazines = Magazine.all

    @art_magazines = Magazine.where(category: 'art')
    @food_magazines = Magazine.where(category: 'food')
    @fashion_magazines = Magazine.where(category: 'fashion')

    @magazines_under_10 = Magazine.where("price < '10'")
    @magazines_under_15 = Magazine.where("price < '15'")
    @magazines_under_30 = Magazine.where("price < '30'")

    @magazines_between_10_and_15 = @magazines_under_15 - @magazines_under_10
    @magazines_between_15_and_30 = @magazines_under_30 - @magazines_under_15

    # Union - all art & fashion magazines
    @art_and_fashion_magazines = @art_magazines | @fashion_magazines

    # Intersection - all art magazines under $10
    @art_magazines_under_10 = @art_magazines & @magazines_under_10 

    # Difference - all magazines under $15 that aren't food magazines
    @magazines_under_15_not_food = @magazines_under_15 - @food_magazines

    # Complement - all magazines except art magazines
    @magazines_that_are_not_art = Magazine.where.not(id: @art_magazines)



  end

  # GET /magazines/1
  # GET /magazines/1.json
  def show
  end

  # GET /magazines/new
  def new
    @magazine = Magazine.new
  end

  # GET /magazines/1/edit
  def edit
  end

  # POST /magazines
  # POST /magazines.json
  def create
    @magazine = Magazine.new(magazine_params)

    respond_to do |format|
      if @magazine.save
        format.html { redirect_to @magazine, notice: 'Magazine was successfully created.' }
        format.json { render :show, status: :created, location: @magazine }
      else
        format.html { render :new }
        format.json { render json: @magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazines/1
  # PATCH/PUT /magazines/1.json
  def update
    respond_to do |format|
      if @magazine.update(magazine_params)
        format.html { redirect_to @magazine, notice: 'Magazine was successfully updated.' }
        format.json { render :show, status: :ok, location: @magazine }
      else
        format.html { render :edit }
        format.json { render json: @magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazines/1
  # DELETE /magazines/1.json
  def destroy
    @magazine.destroy
    respond_to do |format|
      format.html { redirect_to magazines_url, notice: 'Magazine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magazine
      @magazine = Magazine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magazine_params
      params.require(:magazine).permit(:title, :price, :category, :description)
    end
end
