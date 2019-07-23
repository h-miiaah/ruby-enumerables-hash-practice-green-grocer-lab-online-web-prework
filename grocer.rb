def consolidate_cart(cart)
  # code here
  cart.each_with_object({}) do |item, consolidated_item|
      item_name = item.keys.first
      if consolidated_item[item_name]
        consolidated_item[item_name][:count] += 1
      else
        consolidated_item[item_name] = {
          price: item[item_name][:price],
          clearance: item[item_name][:clearence],
          count: 1
        }
      end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
