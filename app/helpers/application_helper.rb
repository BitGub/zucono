module ApplicationHelper
  def quid(price)
  number_to_currency(price, unit: "&pound")
  end
  
  def full_title(page_title)
    base_title = "Zucono"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
