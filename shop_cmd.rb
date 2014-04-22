require_relative 'shop'
require_relative 'article'

class CommandlineInterface 
  
  def initialize
    banana = Article.new("Banana", 1.5, 10)
    bread  = Article.new("Bread" , 0.5, 25)
    juice  = Article.new("Juice" , 1.0, 15)

    @articles = [banana, bread, juice]
    @shop = Shop.new
  end

  def run
    while true 
      puts "I have "
      for article in @articles do
        puts " " + article.stock.to_s + " " + article.name + "s"
      end
      
      name = read("Which article do you want to buy?")
      amount = read("How many " + name + "s do you want to buy?")
      article = findArticle(name)

      if @shop.sell(amount.to_i, article)
        puts "Ok, thanks. Next please!"
      else
        puts "Sorry not enough in stock."
      end
      puts 
    end
  end

private 
  def read(msg)
    puts msg
    print "> "
    input = gets.chomp

    if input.eql? "exit"
      exit
    else
      input
    end
  end

  def findArticle(name) 
    for article in @articles
      if name.eql? article.name
        return article
      end
    end
  end

end

commandlineInterface = CommandlineInterface.new
commandlineInterface.run
