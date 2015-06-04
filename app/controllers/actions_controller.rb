class ActionsController < ApplicationController
  def welcome
    @posts = Post.all
    @response = HTTParty.get"http://magicseaweed.com/api/cjsvb50FweymVpfNq6bMg1pjONR0BVaP/forecast/?spot_id=286"


  end
end


#< % = @response[title] = >
# @response = HTTParty.get("http://magicseaweed.com/api/cjsvb50FweymVpfNq6bMg1pjONR0BVaP/forecast/?spot_id=286")


#workaround for newest gem to make it a workable ruby hash,
# uri = HTTParty.get"http://magicseaweed.com/api/cjsvb50FweymVpfNq6bMg1pjONR0BVaP/forecast/?spot_id=286"
# @response = JSON.parse(uri)

# <%= DateTime.strptime("#{1433160000}",'%s').strftime("%d-%m-%y") %>