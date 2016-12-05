module Manages
  class ManagesController < ApplicationController
    layout 'manages'
    before_action :authenticate_admin!
  end
end
