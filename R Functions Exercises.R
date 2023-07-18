# EX 0.1
# hello name print
hello_you <- function(name){
  print(paste('Hello', name))
}

hello_you('Louisa')

# EX 0.2
#hello name return
hello_you <- function(name){
  return(paste('Hello', name))
}
print(hello_you('Dan'))

# EX 1
# return product
prod <- function(x,y){
  return(x*y)
}

print(prod(3,4))

# EX 2
#is an integer in a vector?
in_check <- function(int,vec){
  if (int %in% vec){
    return(T)
  } else{
    return(F)
  }
}

in_check(5,c(4,5,6))
in_check(15,c(4,5,6))

# EX 3
#return number of times integer appears in vector

in_count <- function(x,y){
  count <- 0
  for (item in y){
    if (item==x){
      count <- count + 1
    }
    
  }
  return(count)
}

in_count(3,c(3,3,3,4,5,6,7))

# EX 4
#return least number of bars needed (1 kg and 5kg bars) to fufil kg requested

bar_count <- function(kg){
  
  #set to 0
  big.bars <- 0
  small.bars <- 0
 
  big.bars <-round(kg/5,0)
  small.bars <- (kg%%5)
  
  return(big.bars+small.bars)
  }
  
bar_count(6)
bar_count(17)

# EX 5
#return sum of 3 integers. But if int%%3==0 don't add towards sum

summer <- function(x,y,z){
  
  #set up list of nums and a blank list
  nums <- c(x,y,z)
  nums.corrected <- c()
  
  for (item in nums){
    if (item%%3 !=0){
      nums.corrected <- append(nums.corrected,item)
    }
  }
  return(sum(nums.corrected))
}

summer(7,2,3)
summer(3,6,9)
summer(9,11,12)

# EX 6

prime_check <- function(x){
  
  if (item<=2){
    return(F)
    break
  } else {
    dividers <- seq(from=2,to=x/2)
    for (item in dividers){
      if (x %% item ==0){
        return(F)
        break
      }
    }
    return(T)
  }
}

prime_check(17)
prime_check(2)
prime_check(5)
prime_check(4)
prime_check(237)
prime_check(131)

# EX 6 AGAIN
# a more efficient method

prime_check <- function(x){
  if (x == 2){
    return(T)
  } else if (any(x %% 2:(x/2) ==0)){
    return(F)
  } else{
    return(T)
  }
  }

