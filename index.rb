@data={}

def setInput(number,message,time)
    number  = "#{number}"
    message = "#{message}"
    time    = "#{time}"

    if !@data.has_key?(number)
        @data[number] = [[message,time]]
    else
        @data[number] << ["#{message}","#{time}"]
    end
    puts "message is stored successfully"
end


def getMessagesByPhoneNumber(number)
    number  = "#{number}"
    puts "message are :"
    puts @data[number]
    main_menu                    #CALLING MAIN MENU
end

def getPhoneNumberByMessage(message)
    message = message
    puts message
    @data.each do |key, array|
      if message == array[0][0]
          puts key
      end
  end
   main_menu                    #CALLING MAIN MENU
end

def choice1
    puts "Enter PhoneNumber"
    number = gets
    puts "Enter Message"
    message = gets
    time = Time.new

    setInput(number, message, time)

    main_menu                    #CALLING MAIN MENU

end

def choice2
    puts "enter number"
    number = gets
    getMessagesByPhoneNumber(number)      #CALLING MAIN MENU

end

def choice3
    puts "Enter message"
    message = gets
    getPhoneNumberByMessage(message)        #CALLING MAIN MENU
end

def main_menu
    puts "Enter your choice"
    puts "Enter 1 for storing message"
    puts "Enter 2 for getting messages by number"
    puts "Enter 3 for getting number by message "
    puts "Enter 4 for exit"
    choice = gets.to_i

    case choice

    when 1
        choice1
    when 2
        choice2
    when 3
        choice3
    when 4

    else
      puts "You gave me entered a wrong choice"
    end
end

main_menu
