# 1. The Problem

> As a customer  
> So that I can check if I want to order something  
> I would like to see a list of dishes with prices.
> 
> As a customer  
> So that I can order the meal I want  
> I would like to be able to select some number of several available dishes.
> 
> As a customer  
> So that I can verify that my order is correct  
> I would like to see an itemised receipt with a grand total.

Use the `twilio-ruby` gem to implement this next one. You will need to use
doubles too.

> As a customer  
> So that I am reassured that my order will be delivered on time  
> I would like to receive a text such as "Thank you! Your order was placed and
> will be delivered before 18:52" after I have ordered.

Fair warning: if you push your Twilio API Key to a public Github repository,
anyone will be able to see and use it. What are the security implications of
that? How will you keep that information out of your repository?


# 2. Class System Design



   ┌─────────────────┐
   │     MENU        │
   │     ----        │
   │                 │
   │     -add        │
   │     -dish       │
   │     -all        │
   │     -dish_name  │
   │     -dish_price │
   │                 │
   └────────┬────────┘
            │
            │
            ▼
   ┌─────────────────────┐
   │                     │
   │    ORDERING         │
   │    --------         │
   │                     │
   │    -selector        │
   │    -add             │
   │    -remove          │
   │    -tot_order       │
   │                     │
   │                     │
   └─────────┬───────────┘
             │
             │
    ┌────────▼─────────┐
    │  RECEIPT         │
    │  -------         │
    │                  │
    │  -total_calc     │
    │  -printer        │
    │                  │
    │                  │
    │                  │
    └──────────────────┘







class Menu (name, price)
  #displays dishes available

  def add
    # adds dishes to menu hash
  end

  def dish
    # returns a single dish's name and price
  end

  def all
    #shows entire menu
  end

  def dish_name
    # shows dish names based on prices
  end

  def dish_price
    # shows dish prices based on name
  end

end

class Ordering
  #allows user to select dishes

  def selector
    # marks a dish as selected
    # returns dish
  end

  def add
    # adds dish to order
  end

  def remove
    # removes dish from order
  end

  def tot_order
    # shows list of ordered items
  end

end

class Receipt
  #provides itemised receipt and grand total

  def total_calc
    # calcs the order total
  end

  def printer
    # displays receipt
  end

end

# TO IMPLEMENT LATER
class Verification
  #sends text confirming order and delivery time 
end






# 3. Integration Tests









# 4. Unit Tests