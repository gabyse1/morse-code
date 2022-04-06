$morse_hash = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
}

def decode_char (mc)
  print $morse_hash[mc]
end

def decode_word (mw)
  mw_arr = mw.split(/ /)
  mw_decode = ''
  mw_arr.each { |w|
    c = decode_char w
    mw_decode += c.to_s
  }
  print "#{mw_decode} " 
end

def decode (message)
  word_array = message.split(/   /).map
  wd_decode = ''
  word_array.each { |w|
    c = decode_word w
    wd_decode += c.to_s}
  puts "#{wd_decode} "
end


decode('-- -.--')
decode ('-- -.--   -. .- -- .')
decode ('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...
')
