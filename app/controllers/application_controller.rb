class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :show_locales

  def show_locales
    puts I18n.locale
    puts Spree.t :action
  end
end
