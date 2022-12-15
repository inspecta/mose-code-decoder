MORSE_CODE_HASH_TABLE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
  '----.' => '9'
}.freeze

def decode_char(mose_char)
  @char = MORSE_CODE_HASH_TABLE[mose_char]
  @char
end

def decode_word(mose_word)
  @word = ''
  @word_array = mose_word.split

  @word_array.map do |i|
    @word += decode_char(i)
  end

  "#{@word} "
end

def decode(mose_code)
  @final_word = ''
  @mose_code_arr = mose_code.split('   ')
  @mose_code_arr.map do |mose_word|
    @final_word += decode_word(mose_word)
  end

  print "#{@final_word} "
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
