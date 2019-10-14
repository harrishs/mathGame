class Question
  attr_reader :answer, :question
  
    def initialize(num1 = rand(20) + 1, num2 = rand(20) + 1)
      @question = "What does #{num1} plus #{num2} equal?"
      @answer = num1 + num2
    end
  end