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

    # @categories = current_user.categories

    # @today = Date.current

  end
end
