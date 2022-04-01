let loop = true;
var list = [0,0,0,0,0,0,0,0,0,0]
var selectedList:[Int] = []
while(loop){
for (index, item) in list.enumerated() {
    print("item \(index)  -> ",item)
}
print("Select An Item")
let input = readLine()
let selectedItem = Int(input!)
if(selectedList.count == 0){
  selectedList.append(selectedItem!)
  list[selectedItem!] = list[selectedItem!] == 0 ? 1 : 0
}else{
  if(!selectedList.contains(selectedItem!)){
    if(selectedItem == selectedList[0]-1){
      selectedList.insert(selectedItem!, at: 0)
      list[selectedItem!] = 1
    }else if(selectedItem == selectedList.last!+1){
      selectedList.append(selectedItem!)
      list[selectedItem!] = 1
    }else{
      print("select continous slot")
    }
  
  }else if(selectedList.contains(selectedItem!)){
    if(selectedItem == selectedList[0]){
        list[selectedItem!] = 0
        selectedList.removeFirst()
    }else if(selectedItem == selectedList.last!){
      list[selectedItem!] = 0
        selectedList.removeLast()
    }else{
      print("you can only unselect continous slot")
    }
  }else{
    print("select continous slot")
  }
}
// print(selectedList)
}
