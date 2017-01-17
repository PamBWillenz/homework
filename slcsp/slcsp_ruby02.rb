require 'csv'

  # desc "Import plans from csv"
  # task plans: :environment do
  #   Filename = File.join Rails.root, 'plans.csv'

def import_csv  # set up plans.csv and grab all silver attributes
  CSV.foreach('plans.csv', headers: true, headers_converters: :symbol) do |row|
    
      state, rate, rate_region, zip = row
      
      plan = Plan.create(state: state, rate: rate, rate_region: rate_region, zip: zip_code)


      plan = Plan.where(metal_level: row[:metal_level]).first_or_initialize
      plan.assign_attributes row.to_hash.slice(:Silver)
      plan

  p plan
  end
end


def file_to_csv
  attributes = %w{state rate rate metal_level region zip_code}

  CSV.generate(headers: true) do |csv|
    csv << attributes

    all.each do |plan|
      csv << plan.attributes.values_at(*metal_level)
      csv << attributes.map{ |attr| plan.send(attr) }
    end
  end
  puts csv
end

def to_csv
  CSV.generate do |csv|
    csv << metal_level
    all.each do |plan|
      csv << plan.attributes.values_at(*metal_level)
    end
  end
  puts csv.inspect
end
