puts 'Welcome to Macic Eight ball!'  

@random_answers = ['Try Again.', 'Spin around 20 times, and it will come true.', 'Outlook is good.', 'You\'ll be Trumped!', 
'As I see it, yes.', 'Most Likely.', 'Umm, no.', 'Did you really just ask that?']

@new_answers = ['Try Again.', 'Spin around 20 times, and it will come true.', 'Outlook is good.', 'You\'ll be Trumped!', 
'As I see it, yes.', 'Most Likely.', 'Umm, no.', 'Did you really just ask that?']


def add_answer
  puts 'YOU JUST WON A MILLION DOLLARS! Collect from Dave.'
  puts 'Now that you\'re rich, you tell me an answer.'
  @user_input = gets.chomp
  @new_answers << @user_input 
  puts 'Here are all of your answers.'
  puts '-----------------------------'
  puts @new_answers.uniq
end 

def reset_answer 
  puts'You have just reset all of the answers.'
  @random_answers
end

def question
  puts'Type a question to get an answer, or type QUIT to end the program.'  
    @user_question = gets.chomp.downcase 
    case @user_question 
      when 'will i be rich?'
        add_answer
      when 'will i graduate?'
        reset_answer
      when 'quit'
        puts'Thanks for using the Magic Eight Ball. Please play again!'
        exit (0) 
      else 
        @user_question = @random_answers.sample 
        puts "The Magic Eight Ball says: #{@user_question}"  
    end
  question     
end 
 
question  
 
 

