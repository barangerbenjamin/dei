class CompanyDeiFieldsController < ApplicationController
  before_action :set_company_dei_field, only: %i[ show edit update destroy ]

  # GET /company_dei_fields or /company_dei_fields.json
  def index
    @company_dei_fields = CompanyDeiField.all
  end

  # GET /company_dei_fields/1 or /company_dei_fields/1.json
  def show
  end

  def toggle_off
    cdf = CompanyDeiField.find(params[:company_dei_field_id])
    company = cdf.company
    cdf.destroy
    redirect_to company_path(company)
  end

  # GET /company_dei_fields/new
  def new
    @company_dei_field = CompanyDeiField.new
  end

  # GET /company_dei_fields/1/edit
  def edit
  end

  # POST /company_dei_fields or /company_dei_fields.json
  def create
    @company_dei_field = CompanyDeiField.new(company_dei_field_params)

    respond_to do |format|
      if @company_dei_field.save
        format.html { redirect_to @company_dei_field, notice: "Company dei field was successfully created." }
        format.json { render :show, status: :created, location: @company_dei_field }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company_dei_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_dei_fields/1 or /company_dei_fields/1.json
  def update
    respond_to do |format|
      if @company_dei_field.update(company_dei_field_params)
        format.html { redirect_to @company_dei_field, notice: "Company dei field was successfully updated." }
        format.json { render :show, status: :ok, location: @company_dei_field }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company_dei_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_dei_fields/1 or /company_dei_fields/1.json
  def destroy
    @company_dei_field.destroy
    respond_to do |format|
      format.html { redirect_to company_dei_fields_url, notice: "Company dei field was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_dei_field
      @company_dei_field = CompanyDeiField.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_dei_field_params
      params.require(:company_dei_field).permit(:company_id, :dei_field_id)
    end
end
