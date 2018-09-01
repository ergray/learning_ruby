# require "./rooms.rb"
require "./Mechanics.rb"

#variables for the game

def start

    player_loc = 0

    game_start = "start"

    #begin the game
    Mechanics.show_title()

    while true
        command = Mechanics.prompt()
        
        if command == "help"
            Mechanics.show_help()
        elsif command == "start"
            Mechanics.start_game(player_loc)
        elsif command == "quit"
            exit(0)
        elsif command.include? 'move'
            direction = Mechanics.check_direction(player_loc, Mechanics.parse_input(command))
            if direction != false
                player_loc = direction
                Mechanics.show_room(player_loc)
            else
               puts "You can't seem to move that way."
            end
        else
            puts "I don't know what you mean."
        end
    end
end

#some while true statement

def game_over
    #some end game conditions
end

start()
# Mechanics.show_start()
# puts "Hi?"
