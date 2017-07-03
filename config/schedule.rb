# Disable user account if they orders wasn't returned in 2 days of the order
every 6.hours do
  orders = orders.each do |order|
    if order.fixed? && !order.returned && order.created_at > 2.day
      order.update_attribute(is_active:, false)
    end
  end
end
