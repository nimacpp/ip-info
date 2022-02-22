#! /usr/bin/env ruby

require "net/http"
require "json"
class String
def red;            "\e[31m#{self}\e[0m" end
def green;          "\e[32m#{self}\e[0m" end
def brown;          "\e[33m#{self}\e[0m" end
def blue;           "\e[34m#{self}\e[0m" end
def magenta;        "\e[35m#{self}\e[0m" end
def cyan;           "\e[36m#{self}\e[0m" end
def gray;           "\e[37m#{self}\e[0m" end
end
if nil != ARGV[0] 
  ip = ARGV[0] 
  p ip
  url = URI.parse("http://ip-api.com/json/#{ip}")
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
  }
  re1 = JSON.parse(res.body)
  re1.each_pair do |shark, index|
  puts "[+] ".green+"#{shark} ".magenta+"=> #{index}".cyan 
  sleep 0.2
  end
else
  system("cls")
  puts '''
  --------  -----------       --------  ----    ---- ------------   --------   
  ********  ************      ********  *****   **** ************  **********  
    ----    ---      ---        ----    ------  ---- ----         ----    ---- 
    ****    ************        ****    ************ ************ ***      *** 
    ----    -----------         ----    ------------ ------------ ---      --- 
    ****    ****                ****    ****  ****** ****         ****    **** 
  --------  ----              --------  ----   ----- ----          ----------  
  ********  ****              ********  ****    **** ****           ******** '''.cyan

  print "\n Enter Your ip Target : ".green
  ip = $stdin.gets.chomp
  
  url = URI.parse("http://ip-api.com/json/#{ip}")
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
  }

  re1 = JSON.parse(res.body)
  re1.each_pair do |shark, index|
  puts "[+] ".green+"#{shark} ".magenta+"=> #{index}".cyan 
  sleep 0.2
  end
end                                                                       
