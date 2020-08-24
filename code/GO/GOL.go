//Conways Game of Life in Golang
//Author: Suraj Pawar

package main

import (
    "fmt"
  "time"
  "math/rand"
)

func life (rows int, cols int, some float32, generations int){
    now := make([]int, rows*cols)
    for i := 0; i < rows * cols; i++ {
        if rand.Float32() < some{
            now[i] = 1
        } else{
            now[i] = 0
        }
    }
    live(now, rows, cols, generations)
}

func helper(a []int, c int, rows int, cols int) int{
    var res int = 0
    var size int = rows * cols
    if c % cols != 0 && cols > 1{
        res += a[c - 1]
        if c - cols - 1 > -1{
            res+= a[c - cols - 1]
        }
        if c + cols - 1 < size{
            res += a[c + cols - 1]
        }
    } 
    if c%cols != cols-1 && cols > 1{
        res += a[c + 1]
        if c - cols + 1 > -1{
            res+= a[c - cols + 1]
        }
        if c + cols + 1 < size{
            res += a[c + cols + 1]
        }
    }
    if c + cols < size{
        res += a[c + cols]
    }
    if c - cols > -1{
        res += a[c - cols]
    }
    return res
} 

func live(a []int, rows int, cols int, generations int){
    if generations < 1 {
        return
    }
    time.Sleep(time.Second)
    fmt.Println("\n--------------------------- GENREATION:",generations,"-------------------------\n")
    for i := 0; i < len(a); i++ {
        if a[i] == 1{
            fmt.Print("o ")
        } else{
            fmt.Print(" ")
        }
        if (i + 1)%cols == 0{
            fmt.Print("")
        }
    }
    b := make([]int, len(a))
    for c := 0; c < len(a); c++ {
        var neighbors int = helper(a, c, rows, cols)
        b[c] = a[c]
        if a[c] == 0{
            if (neighbors == 3){
                b[c] =  1 
            }else{
                b[c] = 0
            }
        } else{
            if (neighbors == 2) || (neighbors == 3){
                b[c] =  1 
            }else{
                b[c] = 0
            } 
        }
    }
    generations -= 1
    fmt.Println("\n---------------------------------------------------------------------\n")
    live(b,rows, cols, generations)
}

func main() {
    life(20,50,0.619,200)
}