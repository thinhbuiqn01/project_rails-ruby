class QlbooksController < ApplicationController
  before_action :set_qlbook, only: %i[ show edit update destroy ]

  # GET /qlbooks or /qlbooks.json
  def index
    @qlbooks = Qlbook.all
  end

  # GET /qlbooks/1 or /qlbooks/1.json
  def show
  end

  # GET /qlbooks/new
  def new
    @qlbook = Qlbook.new
  end

  # GET /qlbooks/1/edit
  def edit
  end

  # POST /qlbooks or /qlbooks.json
  def create
    @qlbook = Qlbook.new(qlbook_params)

    respond_to do |format|
      if @qlbook.save
        format.html { redirect_to qlbook_url(@qlbook), notice: "Qlbook was successfully created." }
        format.json { render :show, status: :created, location: @qlbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qlbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qlbooks/1 or /qlbooks/1.json
  def update
    respond_to do |format|
      if @qlbook.update(qlbook_params)
        format.html { redirect_to qlbook_url(@qlbook), notice: "Qlbook was successfully updated." }
        format.json { render :show, status: :ok, location: @qlbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qlbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qlbooks/1 or /qlbooks/1.json
  def destroy
    @qlbook.destroy

    respond_to do |format|
      format.html { redirect_to qlbooks_url, notice: "Qlbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qlbook
      @qlbook = Qlbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qlbook_params
      params.require(:qlbook).permit(:mahs_262, :hoten_262, :lop_262, :masach_262, :tensach_262, :tentacgia_262, :soBM_262, :ngaymuon_262, :ngaytra_262, :ghichu_262)
    end
end
