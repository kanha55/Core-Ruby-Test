require 'date'
class Buyer
  def user_data(list)          #functionalty for Task:1
    user_objects  = Array.new(list.length)
    for index_no in (0...list.length)
      user_objects[index_no] = "#{list[index_no][:first_name]} #{list[index_no][:last_name]}"
    end
    return user_objects
  end

  def get_buyer_fullname(list)  #functionalty for Task:3
    if list[:role] == 'buyer'
      return "'#{list[:first_name]} #{list[:last_name]}'"
    else
      return "No data found"  
    end
  end

  def get_age(list)             #functionalty for Task:5
    return Date.today.year - (Date.parse list[:date_of_birth]).year
  end

  def get_buyer_seller_fullname(list)  #functionalty for Task:4
    return "'#{list[:first_name]} #{list[:last_name]}'"
  end

  def get_allbuyer_detail(list)     #functionalty for Task:6
    userno = 0
     buyer_detail = Array.new()
    for index_no in (0...list.length)
      if list[index_no][:role] == 'buyer'
        buyer_detail[userno] = list[index_no]
        userno += 1 
      end  
    end
    return buyer_detail
  end

  def get_user_detail_startwithAlex(list)  #functionalty for Task:8
    user_detail = Array.new()
    userno = 0
    for index_no in (0...list.length)
      if list[index_no][:first_name] == 'alex'
        user_detail[userno] = list[index_no]
        userno += 1 
      end  
    end
    return user_detail
  end
end  

class Seller
  def get_allseller_detail(list)      #functionalty for Task:7
    userno = 0
    seller_detail = Array.new()
    for index_no in (0...list.length)
      if list[index_no][:role] == 'seller'
        seller_detail[userno] = list[index_no]
        userno += 1 
      end  
    end
    return seller_detail
  end
end

class Product
  def product_data(list)          #functionalty for Task:2
    product_objects = Array.new(list.length)
    for index_no in (0...list.length)
      product_objects[index_no] = "#{list[index_no][:name]} #{list[index_no][:seller]}"
    end
    return product_objects
  end
end
list_user = [
  {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
  {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-1990',  :address => 'bhanwar kua', :role => 'seller'}, 
  {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
  {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-1992',  :address => 'geeta bhawan', :role => 'seller'}, 
  {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
]
list_product = [
  {:name => 'bicycle', :seller => 'alex', :price => 3000, category: 'vehicle'},
  {:name => 'car', :seller => 'meena', :price => 250000, category: 'vehicle'},
  {:name => 'jeans', :seller => 'prabhu', :price => 1800, category: 'clothes'},
  {:name => 'shirt', :seller => 'prabhu', :price => 700, category: 'clothes'},
  {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, category: 'clothes' },
  {:name => 't-shirt', :seller => 'prabhu', :price => 600, category: 'clothes'},
  {:name => 'capri', :seller => 'prabhu', :price => 300, category: 'clothes'},
  {:name => 'bike', :seller => 'meena', :price => 60000, category: 'vehicle'},
  {:name => 'scooter', :seller => 'meena', :price => 25000, category: 'vehicle'},
  {:name => 'maruti', :seller => 'meena', :price => 400000, category: 'vehicle'},
  {:name => 'auto', :seller => 'meena', :price => 100000, category: 'vehicle'},
  {:name => 'sweter', :seller => 'prabhu', :price => 1200, category: 'clothes'},
  {:name => 'jacket', :seller => 'prabhu', :price => 3500, category: 'clothes'},
  {:name => 'hat', :seller => 'prabhu', :price => 400, category: 'clothes'},
  {:name => 'doll', :seller => 'alex', :price => 350, category: 'toys'},
  {:name => 'toy car', :seller => 'alex', :price => 250, category: 'toys'},
  {:name => 'bat', :seller => 'alex', :price => 700, category: 'toys'},
  {:name => 'ball', :seller => 'alex', :price => 20, category: 'toys'},
  {:name => 'batman', :seller => 'alex', :price => 300, category: 'toys'},
  {:name => 'barbi doll', :seller => 'alex', :price => 3000, category: 'toys'}
]

buyer_obj = Buyer.new
seller_obj = Seller.new
product_obj = Product.new
puts "Task 1. User Object :- \n #{buyer_obj.user_data(list_user)}\n\n"
puts "Task 2. Product Object :- \n #{product_obj.product_data(list_product)}\n\n"
puts "Task 3. Buyer FullName :- \n#{buyer_obj.get_buyer_fullname(list_user[0])}\n\n"
puts "Task 4. Buyer/seller FullName :- \n#{buyer_obj.get_buyer_seller_fullname(list_user[1])}\n\n"
puts "Task 5. \n Age = #{buyer_obj.get_age(list_user[1])}\n\n"
puts "Task 6. detail of Buyer :- \n #{buyer_obj.get_allbuyer_detail(list_user)}\n\n"
puts "Task 7. detail of Seller :- \n #{seller_obj.get_allseller_detail(list_user)}\n\n"
puts "Task 8. detail of User start with alex :- \n #{buyer_obj.get_user_detail_startwithAlex(list_user)}\n"

