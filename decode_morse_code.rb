def decode_char(char)
  case char
  when '.-'
    print 'A'
  when '-...'
    print 'B'
  when '-.-.'
    print 'C'
  when '-..'
    print 'D'
  when '.'
    print 'E'
  when '..-.'
    print 'F'
  when '--.'
    print 'G'
  when '....'
    print 'H'
  when '..'
    print 'I'
  when '.---'
    print 'J'
  when '-.-'
    print 'K'
  when '.-..'
    print 'L'
  when '--'
    print 'M'
  when '-.'
    print 'N'
  when '---'
    print 'O'
  when '.--.'
    print 'P'
  when '--.-'
    print 'Q'
  when '.-.'
    print 'R'
  when '...'
    print 'S'
  when '-'
    print 'T'
  when '..-'
    print 'U'
  when '...-'
    print 'V'
  when '.--'
    print 'W'
  when '-..-'
    print 'X'
  when '-.--'
    print 'Y'
  when '--..'
    print 'Z'
  when '.----'
    print '1'
  when '..---'
    print '2'
  when '...--'
    print '3'
  when '....-'
    print '4'
  when '.....'
    print '5'
  when '-....'
    print '6'
  when '--...'
    print '7'
  when '---..'
    print '8'
  when '----.'
    print '9'
  when '-----'
    print '0'
  else
    print ''
  end
end

def decode_word(word)
  word_arr = word.split(/ /)
  word_decode = ''
  word_arr.each do |c|
    word_decode += (decode_char c).to_s
  end
  print "#{word_decode} "
end

def decode(message)
  word_array = message.split(/   /).map
  wd_decode = ''
  word_array.each do |w|
    wd_decode += (decode_word w).to_s
  end
  puts "#{wd_decode}"
end

decode('-- -.--')
decode ('-- -.--   -. .- -- .')
decode ('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
