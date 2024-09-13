def transpose(board)
  size = board[0].length
  t_board = Array.new(size) { [] }

  (0...size).each do |i|
    board.each do |row|
      t_board[i] << row[i]
    end
  end
  t_board
end

board2 = [[2, 1, 1],
          [2, 0, 2],
          [0, 0, 0]]

t_b = [[2, 2, 0],
       [1, 0, 0],
       [1, 2, 0]]
#puts is_solved(board2)

puts transpose(board2).inspect
