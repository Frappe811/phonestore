class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_lines
  include PgSearch
  pg_search_scope :search_by_order, :associated_against => {:user => [:name]}, :against => :id,
                  :using => {:tsearch => {:prefix => true}}

  def add(phone)

    if cart_lines.count == 0
      create_new_cart_line(phone)
    else
      if cart_line = has_cart_lines_got_phone(phone)
         cart_line.quantity += 1
         cart_line.save
      else
        create_new_cart_line(phone)
      end
    end
  end


  def num_of_phone

    result = 0
    if cart_lines.count > 0
      cart_lines.each do |cart_line|
        result = result + cart_line.quantity
      end
    end
    return result
  end

  def remove(phone)
    if cart_lines.count != 0
      cart_line = has_cart_lines_got_phone(phone)
      if cart_line.quantity > 1
        cart_line.quantity -= 1
        cart_line.save
      else cart_line.quantity = 1
         cart_line.destroy
      end


    end
  end
  def total_price
    total = 0
    #
    if cart_lines.count > 0
      cart_lines.each do |cart_line|
        total_price = cart_line.quantity * cart_line.phone.price
        total = total + total_price
      end
    end
    return total

    end



  private


  def create_new_cart_line(phone)
    cart_lines.create phone: phone, price: phone.price, quantity: 1
  end

  def has_cart_lines_got_phone(phone)
    cart_lines.each do |cart_line|

      if cart_line.phone.id == phone.id
        return cart_line
      end
    end
    nil
  end
end
