 # Transformed hex into binary

0010000000001011010111000100000110000110000010001000011000100010001001
0000010011000110100011010010100110001000010011000100000000010000001010
0110011011001000101111000011101000000100010001001011011000010101001100
1001100110000010001000110001110000101001110001000011100100101000111011
0100000010010011001100010010010001100100110001010000110000011101001000
0011010000000001010001110100011100000010000101000010111001000001110100
111000100100011000001111010010001001101000111001100111001001101010111

# Convert hex data into binary data

# num = "Off"
# num.hex.to_s(2).rjust(num.size*4, '0')

# # Once code is in binary data

# File.open('txnlog', 'wb')

# f = File.open('txnlog.dat', 'rb')
# f.read(2) # => 2-byte string
# f.read(4) # => 4-byte string
# f.read(8) # => 8-byte string
# f.read(10) # => 10-byte string
# f.close

# def translate_to_binary(array_of_hex)
#   array_of_binary = []
#   array_of_hex.each do |num|
#     array_of_binary << sprintf("%b", num).rjust(32, '0')
#   end
#   array_of_binary
# end

# class String
#   def hex_to_binary
#     txnlog = gsub("\s", "");
#     ret = []
#     (0...txnlog.size()/2).each{|index| ret[index] = [txnlog[index*2, 2]].pack("H2")}
#     return ret
#   end
# end
# STDOUT.write(STDIN.read.hex_to_binary)
