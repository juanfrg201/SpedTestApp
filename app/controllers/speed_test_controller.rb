require 'httparty'
require 'net/http'
class SpeedTestController < ApplicationController
  def index
    response = HTTParty.get('https://speedtest-zhu3.onrender.com/api/speedTest')
    @speed_test_data = JSON.parse(response.body)
  end

  def compare_ips 
    response = HTTParty.get('https://speedtest-zhu3.onrender.com/api/speedTest/myIPs')
    @speed_test_data = JSON.parse(response.body)
  end


end
