puts 'Welcome to Macic Eight ball!'  

@random_answers = ['Try Again.', 'Spin around 20 times, and it will come true.', 'Outlook is good.', 'You\'ll be Trumped!', 
'As I see it, yes.', 'Most Likely.', 'Umm, no.', 'Did you really just ask that?']

def add_answer
  puts 'YOU JUST WON A MILLION DOLLARS! Collect from Dave.'
  puts 'Now that you\'re rich, you tell me an answer.'
  new_answer = gets.chomp
  @random_answers << new_answer 
  @random_answers.uniq 
end 

def question
  puts'Type a question to get an answer, or type QUIT to end the program.'  
    user_question = gets.chomp 
  if user_question.downcase == 'will i be rich?'
    add_answer
  elsif user_question = @random_answers.sample 
    puts "The Magic Eight Ball says: #{user_question}"
  else
    user_question.downcase == 'quit'
    puts'Thanks for using the Magic Eight Ball. Please play again!'
    exit (0)   
  end
  question     
end 
 
question  
 
 

