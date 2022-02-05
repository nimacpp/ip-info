require "httparty"
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
system("cls")
puts '''
 --------  -----------       --------  ----    ---- ------------   --------   
 ********  ************      ********  *****   **** ************  **********  
   ----    ---      ---        ----    ------  ---- ----         ----    ---- 
   ****    ************        ****    ************ ************ ***      *** 
   ----    -----------         ----    ------------ ------------ ---      --- 
   ****    ****                ****    ****  ****** ****         ****    **** 
 --------  ----              --------  ----   ----- ----          ----------  
 ********  ****              ********  ****    **** ****           ******** '''.green

print "\n Enter Your ip Target : ".brown
ip = gets.chomp
re = HTTParty.get("http://ip-api.com/json/#{ip}")
re1 = JSON.parse(re.body)
re1.each_pair do |shark, index|
puts "[+] ".green+"#{shark} ".magenta+"=> #{index}".cyan 
sleep 0.2
end
                                                                             