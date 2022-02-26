class EntriesController < ApplicationController
  before_action :set_category
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # GET /entries
  def index
    # Firm#clients (similar to Client.where(firm_id: id))
    @entries = @category.entries
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
    @entry = @category.entries.build
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  def create
    #Firm#clients.build
    @entry = @category.entries.build(entry_params)

    if @entry.save
      redirect_to category_entries_path(@category), notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      redirect_to category_entry_path(@category), notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    redirect_to category_entries_path(@category), notice: 'Entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = @category.entries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:title, :body, :date)
    end

    def set_category
      @category = current_user.categories.find(params[:category_id])
    end
end
