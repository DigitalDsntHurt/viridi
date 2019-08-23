# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'


##
## ## check data integrity of input spreadsheets
##

model_headers = CSV.read(Rails.root.join('db','model_sketch.csv')).map{|row| row[0] }[1..-1]

eea_db = CSV.read(Rails.root.join('db','eea_db.csv'),headers: true)
eea_headers = eea_db.headers.sort

iea_db = CSV.read(Rails.root.join('db','iea_db.csv'),headers: true)
iea_headers = iea_db.headers.sort

# check number of columns
puts "eea db has #{eea_headers.count} columns"
puts "iea db has #{iea_headers.count} columns"
puts "model will have #{model_headers.count} columns after initialization"
if eea_headers.count == iea_headers.count && model_headers.count == eea_headers.count
	puts "GREEN : the fact all of these have the same number of columns means we're ready to roll"
else
	puts "RED : we have a column number issue that may need sorting out"
end

# check all input column names match model column names
eea_problems = []
eea_headers.each{|header|
	if model_headers.include? header
	else
		eea_problems << header
	end
}

if eea_problems.count == 0
	puts "GREEN : eea headers match model headers, we're good to go"
else
	puts "RED : there are #{eea_problems.count} eea columns that aren't included or don't match the model's headers. these are: #{eea_problems}"
end

iea_problems = []
iea_headers.each{|header|
if model_headers.include? header
	else
		iea_problems << header
	end
}

if iea_problems.count == 0
	puts "GREEN : iea headers match model headers, we're good to go"
else
	puts "RED : there are #{iea_problems.count} iea columns that aren't included or don't match the model's headers. these are: #{iea_problems}"
end



#eea_headers.zip(iea_headers).each{|pair|
#	if pair[0] != pair [1]
#		p pair
#	end
#}

#model_headers.each{|h|
#	p h
#}
#csv[0].each{|row|
#	p row
#}








=begin
##
### Generate fake data
##

111.times do 
	@record = TestRecord.new
	@record.update(
		country: FFaker::AddressFI.country, 
		link: FFaker::Internet.http_url, 
		email: FFaker::Internet.email, 
		phone: FFaker::PhoneNumber.phone_number, 
		name_of_policy: FFaker::Name.name,
		type_of_policy_instrument: FFaker::DizzleIpsum.word,
		total_ght_emissions_reductions_in_2020_kt_co2eq_per_year: FFaker::SSNMX.ssn_undashed,
		realized_net_costs: rand(202498099)
	)
	if rand(2) == 1 
		@record.update(single_policy_or_group_of_policies: "group")
	else 
		@record.update(single_policy_or_group_of_policies: "single")
	end
	@record.save
end
=end