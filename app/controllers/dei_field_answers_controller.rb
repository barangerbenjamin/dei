class DeiFieldAnswersController < ApplicationController
  before_action :set_dei_field_answer, only: %i[ show edit update destroy ]

  # GET /dei_field_answers or /dei_field_answers.json
  def index
    @dei_field_answers = DeiFieldAnswer.all
  end

  # GET /dei_field_answers/1 or /dei_field_answers/1.json
  def show
  end

  # GET /dei_field_answers/new
  def new
    @dei_field_answer = DeiFieldAnswer.new
  end

  # GET /dei_field_answers/1/edit
  def edit
  end

  # POST /dei_field_answers or /dei_field_answers.json
  def create
    @dei_field_answer = DeiFieldAnswer.new(dei_field_answer_params)
    @dei_field_answer.user = current_user

      if @dei_field_answer.save
        redirect_to profile_path
      else

      end

  end

  # PATCH/PUT /dei_field_answers/1 or /dei_field_answers/1.json
  def update
    respond_to do |format|
      if @dei_field_answer.update(dei_field_answer_params)
        format.html { redirect_to @dei_field_answer, notice: "Dei field answer was successfully updated." }
        format.json { render :show, status: :ok, location: @dei_field_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dei_field_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dei_field_answers/1 or /dei_field_answers/1.json
  def destroy
    @dei_field_answer.destroy
    respond_to do |format|
      format.html { redirect_to dei_field_answers_url, notice: "Dei field answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dei_field_answer
      @dei_field_answer = DeiFieldAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dei_field_answer_params
      params.require(:dei_field_answer).permit(:user_id, :dei_field_id, :encrypted_answer, :encrypted_answer_iv)
    end
end
