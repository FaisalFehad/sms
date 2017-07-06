module ApplicationHelper

  def boolean_to_words(value)
    value ? "Yes" : "No"
  end

  def boolean_to_type(value)
    if value == true
      "Fixed item"
    elsif value == false
      "Consumed item"
    else "Unknown type"
    end
  end

  def item_type_in_words(item)
    if item.fixed
      "Fixed Item"
    elsif !item.fixed
      "Consumable Item"
    else
      "Unknown type"
    end
  end
end
