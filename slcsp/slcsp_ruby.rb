require 'csv'

data = "plan_id,state, metal_level, rate, rate_area" 

# read and parse the data
csv_in = CSV.new(data, :headers => true)

# open the temp file
CSV.open('./plans.csv', 'w') do |csv_out|

  # output the headers embedded in the object, then rewind to the start of the list
  csv_out << csv_in.first.headers
  csv_in.rewind

  # loop over the rows
  csv_in.each do |row|

    # munge the first name
    if (row['metal_level']['silver'])
      row['rate'] = row['rate'][1 .. -1] << '-' << row['rate'][0] << 'ay'
    end

    # output the record
    csv_out << row.fields
  end
end

# CSV.open('plans.csv', 'r+') do |row|
#   row << ['metal_level', 'rate', 'rate_area']
#   puts inspect.row
# end

# CSV.foreach('plans.csv', "a+") do | row |

#   if ['metal_level'] = 'Silver'
#       return "rate"
#   else
#       return "rate_area"
#   end
# end
