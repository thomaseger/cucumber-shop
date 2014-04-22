require_relative 'article'

class Shop

  def sell(amount, article)
    if article.available(amount) then
      article.sell(amount)
      return true
    end
    
    return false
  end

end
