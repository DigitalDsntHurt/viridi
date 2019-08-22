# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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