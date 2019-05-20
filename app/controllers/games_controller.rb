require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(7)
  end

  def score
    @letters = params['letters']
    @word = params['test-word']
    @message = "Congratulations, #{@word.upcase} is a great word =)"
    @points = @word.length

    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_validity = JSON.parse(open(url).read)
    unless word_validity['found']
      @message = "Sorry but #{@word} is not an english word"
      @points = 0
    end
  end
end
