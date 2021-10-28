print("Enter size of matrix = ",terminator: "")
var num:Int? = Int(readLine()!)
func foo(){
guard let num1 = num else{return}
print("input \(num1*num1) values for \(num1)*\(num1) matrix")
var matrix = Array(repeating: Array(repeating: 0, count: num1), count: num1)


func getMatrix(){
for row in 0..<matrix.count{
  for colmn in 0..<matrix.count{
    print(row,colmn," = ",terminator: "")
    let input = readLine()
    matrix[row][colmn] = Int(input!)!
  }
}
}
//sumBotomRight
func sumBotomRight()->Int{
  var sum = 0 
for row in 1..<matrix.count{
  for colmn in 1..<matrix.count{
   sum = sum + matrix[row][colmn]
  }
}
return sum
}
//sumCenter
func sumCenter()->Int{
  var sum = 0 
for row in 1..<matrix.count-1{
  for colmn in 1..<matrix.count-1{
   sum = sum + matrix[row][colmn]
  }
}
return sum
}
//productCenter
func productCenter()->[Int]{
  var arr = [Int]()
  for row in 1..<matrix.count-1{
  var product = 1
  for colmn in 1..<matrix.count-1{
  product = product*matrix[row][colmn]
  }
  arr.append(product) 
}
return arr
}
//productBottomRight
func productBottomRight()->[Int]{
  var arr = [Int]()
  for row in 1..<matrix.count{
  var product = 1
  for colmn in 1..<matrix.count{
  product = product*matrix[row][colmn]
  }
  arr.append(product) 
}
return arr
}

print("matrix",matrix)

func getOption(){
print("\n1. Right Corner Sum\n2. Right Corner Product\n3. Center Sum\n4. Center Product")
let option = Int(readLine()!)!
switch(option){
case 1: print("sum of BottomRight values: \(sumBotomRight())")
getOption()
case 2: print("product of BottomRight values: \(productBottomRight())")
getOption()
case 3: print("sum of Center values: \(sumCenter())")
getOption()
case 4: print("product of Center values: \(productCenter())")
getOption()
default: print("wrong option")
break
}
}
// for row in 0..<matrix.count{
//   for colmn in 0..<matrix.count{
//     print(matrix[row][colmn])
//   }
// }

}
foo()
// 
// for i in 0..<m
//     print("\(n): '\(c)'")
// }