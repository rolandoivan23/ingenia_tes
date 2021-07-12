class MainController < ApplicationController
  def home
  	@breadcrum = 'home'
  end

  def contact
  	@breadcrum = 'Conctact'
  end
end
