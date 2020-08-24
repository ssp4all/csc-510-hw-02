

def life (rows, cols, some, generations) 
    now = Array.new(rows*cols)
    for c in 0..((rows*cols)-1)
        
        now[c] =  rand < some ? 1 : 0
    end
    live(now,rows,cols,generations)
end

def helper(a, c, rows, cols)
    res = 0
    size = rows*cols
    if c%cols != 0 and cols > 1
        res += a[c-1]
        if c-cols-1>-1
            res+= a[c-cols-1]
        end
        if c+cols-1<size
            res+=a[c+cols-1]
        end
    end
    if c%cols != cols-1 and cols > 1
        res += a[c+1]
        if c-cols+1>-1
            res+= a[c-cols+1]
        end
        if c+cols+1<size
            res+=a[c+cols+1]
        end
    end
    if c+cols<size
        res += a[c+cols]
    end
    if c-cols > -1
        res += a[c-cols]
    end
    return res
end
    
                
def live(a,rows,cols,gen)
    if (gen < 1)
        return
    end
    sleep(0.5)
    print "\e[2J\e[f"
    
    puts "Generation #{gen}"
    for c in 0..(a.length -  1)
        print a[c] == 1? "o " : "  " 
        if (c+1) % cols == 0
            puts
        end
    end
    b = Array.new(a.length)
    for c in 0..(a.length - 1)
        neighbors = helper a, c, rows, cols
        b[c] = a[c]
        if a[c] == 0
            b[c] = (neighbors == 3) ? 1 : 0
        else
            b[c] = ((neighbors == 2) or (neighbors == 3)) ? 1 : 0
        end
    end
    gen -=1
    live b,rows, cols,gen
end

life(20,50,0.619,200)

