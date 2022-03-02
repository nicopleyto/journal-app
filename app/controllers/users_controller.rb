class UsersController < ApplicationController
  def entries
    @entries = current_user.entries
  end
end
