require 'csv'

# plans = CSV.read('plans.csv', headers: true)
# plans << ['Silver', 298.62, 7]
# print plans.headers

# plans['Silver']
# plans[0]

# print plans

plans_with_silver = Array.new
CSV.foreach('plans.csv', headers: true) do |plan|
  plans_with_silver << plan if plan['metal_level'] == "Silver" 
end
#print plans_with_silver

CSV.open('plans.csv', headers: true) do |plan|
  plans = plan.each
  plans.select do |row|
    row['metal_level'].to_i > 10
  end
end
print plans

# plans.each do |plan_row|
#   p plan_row.to_a
# end

# plans = CSV.foreach('plans.csv') do |row|
#   puts row['Rate']
# end

