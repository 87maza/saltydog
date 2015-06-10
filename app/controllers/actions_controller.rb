class ActionsController < ApplicationController
  def welcome
    surf_api = Figaro.env.surf_api
    city_id = params[:type].present? ? params[:type] : 286
    @posts = Post.all.order("id DESC").all
    @response = HTTParty.get"http://magicseaweed.com/api/#{surf_api}/forecast/?spot_id=#{city_id}"

  end
end


# <%= DateTime.strptime("#{1433160000}",'%s').strftime("%d-%m-%y") %>