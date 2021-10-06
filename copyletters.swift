import Foundation

// func copy(ch:Character, inout [ar]){
// }

var count = 1
var str = "yahhhoo"
let ch:Character = "h"
var strarr = Array(str)
strarr.append(" ")
for (n, c) in str.enumerated() {
    if c == strarr[n+1]{
      count+=1;
      continue;
    }
    if count>1 {
      if c == ch{
      for _ in 0..<count{
        print(c)
      }
    }
      count = 1
    }
}
    // }else{
    //     arr.append(String(c))
    //     if strarr[n] == strarr[n+1]{
    //     arr.append(String(strarr[n+1]))
    //     }
    // }
    
//print(arr)