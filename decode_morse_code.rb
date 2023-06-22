# Morse Code dictionary
MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.'    => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..'   => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--'  => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(given_char)
  MORSE_CODE[given_char]
end

puts decode_char('.-')

def decode_word(given_word)
  given_word.split.map { |char| decode_char(char) }.join
end

puts decode_word('-- -.--')

def decode(given_code)
  given_code.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
