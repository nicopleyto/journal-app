class ApplicationController < ActionController::Base
    before_action :authenticate_user!


    private
  
#     def authenticate_owner!
#         if user_signed_in? && current_user.id == params[:id] # or something similar
#         return true
#         end
#         redirect_to root_url,
#         :notice => "You must have permission to access this category."
#         return false
#   end
end
