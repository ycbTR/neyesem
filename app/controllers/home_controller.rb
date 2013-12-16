class HomeController < ApplicationController
  def index
   @mekan = Mekan.all.map(&:isim).sample
  end
end
