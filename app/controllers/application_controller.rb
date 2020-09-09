class ApplicationController < ActionController::Base
  include Pagy::Backend
  include BirthdaysHelper
end
