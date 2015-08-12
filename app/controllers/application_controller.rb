class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  helper_method :current_user

  private
	  def current_user
	    @current_user ||= User.find(session[:user_id]["$oid"]) if session[:user_id]
	  end
	  
	  def load_order
      if session[:order_id].nil?
        @order = Order.create(status: "unsubmitted")
        session[:order_id] = @order.id.to_s
      else
        @order = Order.find_or_initialize_by(id: session[:order_id]) unless session[:order_id].include? "$oid"
        @order = Order.find_or_initialize_by(id: session[:order_id]["$oid"]) if session[:order_id].include? "$oid"
        if @order.new_record?
          @order.status = "unsubmitted"
          @order.user_id =  session[:user_id]["$oid"]
          @order.save!
          session[:order_id] = @order.id
        end
      end
    end
end
