class UserEntriesController < ApplicationController
  def index
    # cate = params[:cate]
    #   if !cate.nil?
    #     @entries = Entry.where(:category_id => cate)
    #   else
    #     @entries = current_user.entries
    #   end

    day = params[:day]
    if !day.nil?
      @entries = current_user.entries.where(:date => day)
    else
      @entries = current_user.entries
    end
  end

  def new
    @entry = current_user.entries.build
  end

  def create
    #Firm#clients.build
    @entry = current_user.entries.build(entry_params)

    if @entry.save
      redirect_to entries_path, notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:title, :body, :date, :category_id)
    end

end
