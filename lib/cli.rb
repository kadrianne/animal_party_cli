class Cli
    attr_reader :user

    def welcome
        puts "Hello, welcome to Animal Party"
        puts "What's your name?"

        user_name = gets.chomp # .chomp removes \n character

        @user = User.new(user_name)

        main_menu
    end

    def main_menu
        puts "What is your favorite animal?"
        choice = gets.chomp.downcase
        if choice == "cat"
            puts "meow meow, #{user.name}"
        elsif choice == "dog"
            puts "woof woof, #{user.name}"
        else
            puts "Sorry, not a valid choice! Try again."
            main_menu
        end
    end

end