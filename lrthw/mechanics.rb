require './rooms.rb'
include Rooms

module Mechanics


    # def Mechanics.change_state(state)
    #     puts "#{this_game.state}"
    # end

    def Mechanics.prompt()
        print "> "
        action = $stdin.gets.chomp
        return action
    end

    def Mechanics.parse_input(string)
        result = /([a-z]+) ([a-z]+)/i.match(string)
        return result[2]
    end

    def Mechanics.show_title()
        puts """
        Hi, welcome to the game,
        type in start to begin!
        
        Type help at any time to
        get a list of commands.
        """
    end

    def Mechanics.show_help()
        puts """
        **********************************
        *    start            move       *
        *    use              look       *
        *    question         examine    *
        *    take             quit       *
        **********************************
        """
    end

    def Mechanics.start_game(location)
        puts "\n"
        Mechanics.show_room(location)
        puts "\n"
    end

    def Mechanics.show_room(location)
        puts "#{returnRooms(location)[0]}\n"
        print "Exits: "
        returnRooms(location)[1].each do |exit|
            print "#{exit[0]} "
        end
        puts "\n"
    end

    def Mechanics.check_direction(location, direction)
        returnRooms(location)[1].each do |pair|
            if pair.include? direction
                return pair[1]
            end
        end
        return false
    end

    # def adjust_patience
    #     #set the rule for adjusting patience
    # end

    # def check_exits
    #     #confirm exits are valid
    # end

    # def move_loc
    #     #move player location
    # end

    # def check_inventory
    #     #check inventory for player
    # end

    # def parse_command
    #     #take player input and turn it into a command
    # end


    # def use
    #     #use an item
    # end

    # def look
    #     #print room description
    # end

    # def move
    #     #initialize move procedure
    # end

    # def ask_about
    #     #ask npc in room about subject
    # end

end