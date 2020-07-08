class ErrorsController < ApplicationController
 skip_before_action :authenticate_user!
 skip_after_action :verify_authorized, only: [:not_found, :unacceptable, :internal_error]



  def not_found
    respond_to do |format|
      format.html { render status: 404 }
    end
  end

  def unacceptable
    authorize @errors
    respond_to do |format|
      format.html { render status: 422 }
    end
  end

  def internal_error
    respond_to do |format|
      format.html { render status: 500 }
    end
  end
end
