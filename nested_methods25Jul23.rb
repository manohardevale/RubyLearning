# select method 
#we want to know who owns vehicles that are from 2020 or newer. 
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

p vehicles.select{|name,data| data[:year] >= 2020}

#what if we only want the names of the owners and not another nested hash

p vehicles.collect{|name,data| name if data[:year]>=2020}
# returns [nil, :blake, :caleb]
# To avoid getting the nil in the output as it may cause unnecessary problems if this output is required to be used somewhere else. 

p vehicles.collect{|name,data| name if data[:year] >= 2020}.compact

# this can also be achieved by using method filter_map
p vehicles.filter_map{|name,data| name if data[:year] >= 2020}
