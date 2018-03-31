def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] -= num
end

def add_or_remove_cash(pet_shop, num)
   return pet_shop[:admin][:total_cash] += num
end

def pets_sold(pet_shop)
   return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, pet_breed)
pets = []
  for pet in pet_shop[:pets]
    if pet_breed == pet[:breed]
      pets.push(pet)
    end
  end
  return pets
end

# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end
#arthur is in position 3 in the pets array.
#this test is testing a function that finds the 3rd index of the pets array within the pet shop hash.

def find_pet_by_name(pet_shop, name_of_pet)
    for pet in pet_shop[:pets]
      if name_of_pet == pet[:name]
        return pet
      end
    end
    return nil
end

# def test_remove_pet_by_name
#   remove_pet_by_name(@pet_shop, "Arthur")
#   pet = find_pet_by_name(@pet_shop,"Arthur")
#   assert_nil(pet)
# end

def remove_pet_by_name(pet_shop, name_of_pet)

  for pet in pet_shop[:pets]
    if name_of_pet == pet[:name]
     pet[:name].pop
   end
end
