class User

	PSQL_PREAMBLE = "psql -d testdb -c "

	def self.find(id)
		command = `#{PSQL_PREAMBLE}"SELECT * FROM users WHERE id = #{id}"`
		parsed = sql_results_parser command
		parsed[0] ? User.new(parsed[0]) : nil
	end

  private

  def self.object_array_returner(results)
	results_arr = []
	results.each{ |result| results_arr.push( User.new(result) ) }
	results_arr
  end

  def self.sql_results_parser(results)
	initial_split = results.split("\n").map do |a|
	  a.split("|").map do |a|
		a.strip
	  end
	end
	columns_and_results_hash = {columns: initial_split[0], results: initial_split[2..-2]}
	results_array = []
	columns_and_results_hash[:results].each do |result|
	  result_as_hash = {}
	  result.each_with_index do |item, n|
		result_as_hash[columns_and_results_hash[:columns][n]] = item
	  end
	  results_array.push(result_as_hash)
	end
	results_array
  end

end