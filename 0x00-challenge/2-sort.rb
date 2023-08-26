###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next unless arg =~ /^-?[0-9]+$/

    # convert to integer
    begin
      i_arg = Integer(arg)
    rescue ArgumentError
      next
    end

    # insert result at the right position
    idx = result.bsearch_index { |x| x >= i_arg } || result.size
    result.insert(idx, i_arg)
end

puts result
