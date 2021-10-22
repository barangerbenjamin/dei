class DeiCategoriesController < ApplicationController
  before_action :set_dei_category, only: %i[ show edit update destroy ]

  # GET /dei_categories or /dei_categories.json
  def index
    @dei_categories = DeiCategory.all
  end

  # GET /dei_categories/1 or /dei_categories/1.json
  def show
  end

  # GET /dei_categories/new
  def new
    @dei_category = DeiCategory.new
  end

  # GET /dei_categories/1/edit
  def edit
  end

  # POST /dei_categories or /dei_categories.json
  def create
    @dei_category = DeiCategory.new(dei_category_params)

    respond_to do |format|
      if @dei_category.save
        format.html { redirect_to @dei_category, notice: "Dei category was successfully created." }
        format.json { render :show, status: :created, location: @dei_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dei_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dei_categories/1 or /dei_categories/1.json
  def update
    respond_to do |format|
      if @dei_category.update(dei_category_params)
        format.html { redirect_to @dei_category, notice: "Dei category was successfully updated." }
        format.json { render :show, status: :ok, location: @dei_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dei_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dei_categories/1 or /dei_categories/1.json
  def destroy
    @dei_category.destroy
    respond_to do |format|
      format.html { redirect_to dei_categories_url, notice: "Dei category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dei_category
      @dei_category = DeiCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dei_category_params
      params.require(:dei_category).permit(:name)
    end
end
