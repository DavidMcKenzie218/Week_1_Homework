require ("pry-byebug")


# This function takes in the hash and returns the value that in assosciated with the :name key

def pet_shop_name(pet_shop_hash)
  return pet_shop_hash[:name]
end

# This function takes in the hash and returns the value assosciated with the key :total cah which is in turn assosciated with the :admin key

def total_cash(pet_shop_hash)
  return pet_shop_hash[:admin][:total_cash]
end

# This function gets the value created in the previous function total_cash and then adds the money takne in to this value and writes it to the :admin - :cash value

def add_or_remove_cash(pet_shop_hash, transaction)
  total_ammount = total_cash(pet_shop_hash)
  transaction_completed = total_ammount + transaction
  pet_shop_hash[:admin][:total_cash] = transaction_completed
end

# This function collects the value assosciated with the key value :pets_sold in the :admin hash

def pets_sold(pet_shop_hash)
  return pet_shop_hash[:admin][:pets_sold]
end

# This function will change the value of :pets sold in the hash by adding the number that has changed, be it negative or positive, and will update the :pets_sold value to show the new value

def increase_pets_sold(pet_shop_hash, new_pets)
  total_pets = pets_sold(pet_shop_hash)
  new_total_of_pets = total_pets + new_pets
  pet_shop_hash[:admin][:pets_sold] = new_total_of_pets
end

# This function counts the number of animals in the :pets array and returns the ammount 
def stock_count(pet_shop_hash)
  stock = pet_shop_hash[:pets]
  stock_count = stock.count
  return stock_count
end

#This function will take the the array of pets from the hash of pets. It then compares each pet using a for loop and an if loop. If the result is true then it will add it to a new array and return that array.

def pets_by_breed(pet_shop_hash, breed)
  pets_array = pet_shop_hash[:pets]
  pet_breed = []
  for pet in pets_array
    if pet[:breed] == breed
      pet_breed.push(pet)
    end
  end
  return pet_breed
end

#This function will search through the array of hash elements for the pet names and will compare the :name's of each of the pets to the given parameter. This will then return the whole hash of the pet. If it cannot find this it will then exit the loop and return nil

def find_pet_by_name(pet_shop_hash, pet_name)
  pets_array = pet_shop_hash[:pets]
  for pet in pets_array
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

#This function will search through the array in the same way as the function before it. If it finds a matching :name value it will then use the hash.delete function and then delete it.

def remove_pet_by_name(pet_shop_hash, pet_name)
  for pet in pet_shop_hash[:pets]
    if pet[:name] == pet_name
      pet_shop_hash[:pets].delete(pet)
    end
  end
end

#This function will add a new hash to the array from the new pet hash by 'pushing' into the [:pets] array

def add_pet_to_stock(pet_shop_hash, new_pet)
  pet_shop_hash[:pets].push(new_pet)
end

#This function will count the number of items in the customers [:pets] array

def customer_pet_count(customer)
    return customer[:pets].count
end

#This function will push a new pet, as defined by the parameter, to the customers [:pet]

def add_pet_to_customer(customer, customer_pet)
  customer[:pets].push(customer_pet)
end

#This function will check the customers cash against the price of the pet and return the value true if they can afford it and false if they cannot

def customer_can_afford_pet(customer, customer_pet)
  customer_cash = customer[:cash]
  pet_price = customer_pet[:price]
  if customer_cash >= pet_price
    return true
  else
    return false
  end
end

#This function will collect the cost of the pet. It will then add the pet to the users pet array and and then increase the number of pets sold and then adds the cost of the pet to the shop total to get the new total.

#This function will also make sure that the pet that has been taken in from the find_pet_by_name. If the output is nil then it will not sell the pet as it is not present. If it is a pet hash then it will execute the code

def sell_pet_to_customer(pet_shop_hash, pet_hash, customer)
  
  if pet_hash != nil && customer_can_afford_pet(customer, pet_hash) == true

  cost_of_pet = pet_hash[:price]

    customer[:pets].push(pet_hash)
    pet_shop_hash[:admin][:pets_sold] += 1
    pet_shop_hash[:admin][:total_cash] += cost_of_pet
  end
end
