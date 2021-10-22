class DeiFieldsController < ApplicationController
  before_action :set_dei_field, only: %i[ show edit update destroy ]

  # GET /dei_fields or /dei_fields.json
  def index
    @dei_fields = DeiField.all
  end

  # GET /dei_fields/1 or /dei_fields/1.json
  def show
  end

  # GET /dei_fields/new
  def new
    @dei_field = DeiField.new
  end

  # GET /dei_fields/1/edit
  def edit
  end

  # POST /dei_fields or /dei_fields.json
  def create
    @dei_field = DeiField.new(dei_field_params)

    respond_to do |format|
      if @dei_field.save
        format.html { redirect_to @dei_field, notice: "Dei field was successfully created." }
        format.json { render :show, status: :created, location: @dei_field }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dei_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dei_fields/1 or /dei_fields/1.json
  def update
    respond_to do |format|
      if @dei_field.update(dei_field_params)
        format.html { redirect_to @dei_field, notice: "Dei field was successfully updated." }
        format.json { render :show, status: :ok, location: @dei_field }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dei_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dei_fields/1 or /dei_fields/1.json
  def destroy
    @dei_field.destroy
    respond_to do |format|
      format.html { redirect_to dei_fields_url, notice: "Dei field was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dei_field
      @dei_field = DeiField.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dei_field_params
      params.require(:dei_field).permit(:name, :dei_category_id)
    end
end
