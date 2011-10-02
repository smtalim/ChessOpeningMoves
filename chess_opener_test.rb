require_relative 'chess_opener'

if (ARGV.length != 1)
  puts("Run the program as: ruby chess_opener_test.rb chess_opener_test.txt")
  exit(1)
end
my_dsl = ChessOpener.load(ARGV[0])