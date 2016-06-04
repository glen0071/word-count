require_relative 'word_count'

nat = Phrase.new('words words words words do duh')
p nat.word_count


bat = Phrase.new("words, 89 don't can't aAFADFrds 'AFDAF' AFAF can,can DD 09quf8j!#$!$ AAA words do duh")
p bat.word_count
