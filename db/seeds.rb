require 'faker'

fryFarm1 = FryFarm.create!(
  nit: Faker::Number.number(10)
)

fryFarm2 = FryFarm.create!(
  nit: Faker::Number.number(10)
)

food1 = Food.create!(
  brand: Faker::Company.name,
  weight_balance: Faker::Number.decimal(2)
)

food2 = Food.create!(
  brand: Faker::Company.name,
  weight_balance: Faker::Number.decimal(2)
)

prodctr = ProductionCenter.create!(

)

client1 = Client.create!(
  identification: Faker::Number.number(10),
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  phone: Faker::Number.number(7),
  email: Faker::Internet.email
)

client2 = Client.create!(
  identification: Faker::Number.number(10),
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  phone: Faker::Number.number(7),
  email: Faker::Internet.email
)

client3 = Client.create!(
  identification: Faker::Number.number(10),
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  phone: Faker::Number.number(7),
  email: Faker::Internet.email
)

15.times do |row|
  lot1 = Lot.create!(
    fry_farm_id: fryFarm1.id,
    males: Faker::Number.number(5),
    females: Faker::Number.number(10),
    species: Faker::Myst.creature,
    weight: Faker::Number.number(10),
    date: Faker::Date.backward(14)
  )

  lot2 = Lot.create!(
    fry_farm_id: fryFarm2.id,
    males: Faker::Number.number(5),
    females: Faker::Number.number(10),
    species: Faker::Myst.creature,
    weight: Faker::Number.number(10),
    date: Faker::Date.backward(14)
  )

  2.times do |row|
    transport1 = LotTransport.create!(
      transport_date: Faker::Date.backward(14),
      transport_origin: Faker::Pokemon.location,
      transport_destination: Faker::Pokemon.location,
      lot_id: lot1.id
    )

    transport2 = LotTransport.create!(
      transport_date: Faker::Date.backward(14),
      transport_origin: Faker::Pokemon.location,
      transport_destination: Faker::Pokemon.location,
      lot_id: lot2.id
    )
  end

  5.times do |row|
    foodlot1 = FoodInLot.create!(
      lot_id: lot1.id,
      food_id: food1.id
    )

    foodlot2 = FoodInLot.create!(
      lot_id: lot1.id,
      food_id: food2.id
    )

    foodlot3 = FoodInLot.create!(
      lot_id: lot2.id,
      food_id: food1.id
    )

    foodlot4 = FoodInLot.create!(
      lot_id: lot2.id,
      food_id: food2.id
    )
  end

  2.times do |row|
    harv1 = Harvest.create!(
      harvest_date: Faker::Date.backward(14),
      final_weight: Faker::Number.number(10),
      production_center_id: prodctr.id
    )

    harv2 = Harvest.create!(
      harvest_date: Faker::Date.backward(14),
      final_weight: Faker::Number.number(10),
      production_center_id: prodctr.id
    )

    lotharv1 = HarvestLot.create!(
      lot_id: lot1.id,
      harvest_id: harv1.id
    )

    lotharv1 = HarvestLot.create!(
      lot_id: lot2.id,
      harvest_id: harv2.id
    )

    5.times do |row|
      foodharv1 = FoodInHarvest.create!(
        harvest_id: harv1.id,
        food_id: food1.id
      )

      foodharv2 = FoodInHarvest.create!(
        harvest_id: harv1.id,
        food_id: food2.id
      )

      foodharv3 = FoodInHarvest.create!(
        harvest_id: harv2.id,
        food_id: food1.id
      )

      foodharv4 = FoodInHarvest.create!(
        harvest_id: harv2.id,
        food_id: food2.id
      )
    end

    2.times do |row|
      htransport1 = HarvestTransport.create!(
        transport_date: Faker::Date.backward(14),
        transport_origin: Faker::Pokemon.location,
        transport_destination: Faker::Pokemon.location,
        harvest_id: harv1.id
      )

      htransport2 = HarvestTransport.create!(
        transport_date: Faker::Date.backward(14),
        transport_origin: Faker::Pokemon.location,
        transport_destination: Faker::Pokemon.location,
        harvest_id: harv2.id
      )
    end

    dispatch1 = Dispatch.create!(
      dispatch_date: Faker::Date.backward(14),
      client_id: client1.id
    )

    dispatch2 = Dispatch.create!(
      dispatch_date: Faker::Date.backward(14),
      client_id: client2.id
    )

    dispatch3 = Dispatch.create!(
      dispatch_date: Faker::Date.backward(14),
      client_id: client3.id
    )

    4.times do |row|
      frozen = FrozenFish.create!(
        final_weight: Faker::Number.number(10),
        initial_weight: Faker::Number.number(10),
        size: Faker::Number.number(1),
        packing_date: Faker::Date.backward(14),
        harvest_id: harv1.id
      )

      fresh = FreshFish.create!(
        final_weight: Faker::Number.number(10),
        size: Faker::Number.number(1),
        harvest_id: harv2.id
      )

      difrozen = DispatchFrozen.create!(
        frozen_fish_id: frozen.id,
        dispatch_id: dispatch1.id
      )

      difresh = DispatchFresh.create!(
        fresh_fish_id: fresh.id,
        dispatch_id: dispatch2.id
      )
    end

  end

end
