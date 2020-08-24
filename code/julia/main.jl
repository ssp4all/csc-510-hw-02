# Goal: Implement Conways Game of Life in Julia
# author: Jay Jagtap

#=
Rules for Game of Life

 Now Neighbors           Next
#   --- ---------           --------------
#   1   0,1             ->  0  # Lonely
#   1   4,5,6,7,8       ->  0  # Overcrowded
#   1   2,3             ->  1  # Lives
#   0   3               ->  1  # It takes three to give birth!
#   0   0,1,2,4,5,6,7,8 ->  0  # Barren

=#


function nextGen(A)
  #= 
    Function returns next Generation of Life base on above mentioned Rules
    param A: 2D matrix of previous Generation
    return next_Gen: 2D matrix derived from A(previous Generation)
  =#
  
  # Initializing next_Gen with all Zero Values
  next_Gen = zeros(Int, size(A,1), size(A,2))
  
  for i in 1:size(next_Gen, 1)
    for j in 1:size(next_Gen, 2)
      alive_count = get_no_of_alive_neighbors(A, i, j)
      if A[i,j] == 0
        if alive_count == 3
            next_Gen[i,j] = 1
        end
      else
        if alive_count == 2 || alive_count == 3
            next_Gen[i,j] = 1
        end
      end
    end
  end
  return next_Gen
end


function get_no_of_alive_neighbors(A, i, j)
    #=
    param A: 2D matrix
    i: row index
    j: column index
    return alive_count: Number of 1's(alive cells) in neighborhood
    =#

    # Collecting Neighborhood co-ordinates
    neighbor_coord = []
      for k in 1:3
        if k < 2
          push!(neighbor_coord , (i-1,j-1))
          push!(neighbor_coord , (i-1,j))
          push!(neighbor_coord , (i-1,j+1))
        elseif k > 2
          push!(neighbor_coord , (i+1,j-1))
          push!(neighbor_coord , (i+1,j))
          push!(neighbor_coord , (i+1,j+1))
        else
          push!(neighbor_coord , (i,j-1))
          push!(neighbor_coord , (i,j+1))
        end
      end
      
      
    # Deriuving alive count from neighbors
    alive = 0
    for coord in neighbor_coord
        if (coord[1] >= 1 && coord[1] <= size(A,1) ) && (coord[2] >= 1 && coord[2] <= size(A,2))
            if A[coord[1] , coord[2]] == 1
                alive=alive+1
            end
        end
    end
    return alive
end


function main()
  initial_Gen = 
  [  0 0 0 1 1 1 0 0; 
     0 1 0 1 0 1 1 1;
     0 1 0 1 0 1 0 1;
     0 1 0 1 0 1 1 1;
     0 1 0 1 0 1 0 1;
     0 1 0 1 0 1 0 1;
     1 1 1 1 1 0 0 0;
     1 1 1 1 1 1 1 1]

 no_of_iterations = 20
 println("Generation: initial_Gen")
 display(initial_Gen)
 println()
 for i in 1:no_of_iterations
    println("Generation: " , i)
    current_Gen = nextGen(initial_Gen)
    display(current_Gen)
    println()
    initial_Gen = current_Gen
 end

end

main()




