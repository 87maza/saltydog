class ActionsController < ApplicationController
  def welcome
    surf_api = Figaro.env.surf_api
    city_id = params[:type].present? ? params[:type] : 286
    @posts = Post.all
    @response = HTTParty.get"http://magicseaweed.com/api/#{surf_api}/forecast/?spot_id=#{city_id}"

  end

end


#workaround for newest gem to make it a workable ruby hash,
# uri = HTTParty.get"http://magicseaweed.com/api/cjsvb50FweymVpfNq6bMg1pjONR0BVaP/forecast/?spot_id=286"
# @response = JSON.parse(uri)

# <%= DateTime.strptime("#{1433160000}",'%s').strftime("%d-%m-%y") %>