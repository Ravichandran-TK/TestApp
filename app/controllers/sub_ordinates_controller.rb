class SubOrdinatesController < ApplicationController
  before_action :set_sub_ordinate, only: %i[ show edit update destroy ]

  # GET /sub_ordinates or /sub_ordinates.json
  def index
    @sub_ordinates = SubOrdinate.all
  end

  # GET /sub_ordinates/1 or /sub_ordinates/1.json
  def show
  end

  # GET /sub_ordinates/new
  def new
    @sub_ordinate = SubOrdinate.new
  end

  # GET /sub_ordinates/1/edit
  def edit
  end

  # POST /sub_ordinates or /sub_ordinates.json
  def create
    @sub_ordinate = SubOrdinate.new(sub_ordinate_params)

    respond_to do |format|
      if @sub_ordinate.save
        format.html { redirect_to @sub_ordinate, notice: "Sub ordinate was successfully created." }
        format.json { render :show, status: :created, location: @sub_ordinate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_ordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_ordinates/1 or /sub_ordinates/1.json
  def update
    respond_to do |format|
      if @sub_ordinate.update(sub_ordinate_params)
        format.html { redirect_to @sub_ordinate, notice: "Sub ordinate was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_ordinate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_ordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_ordinates/1 or /sub_ordinates/1.json
  def destroy
    @sub_ordinate.destroy
    respond_to do |format|
      format.html { redirect_to sub_ordinates_url, notice: "Sub ordinate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_ordinate
      @sub_ordinate = SubOrdinate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_ordinate_params
      params.require(:sub_ordinate).permit(:name, :manager_id)
    end
end
