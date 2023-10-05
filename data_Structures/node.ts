interface nodeType{
  leftNode?: nodeType; // binary search tree
  rightNode?: nodeType; // binary search tree
  nextNdoe?: null|nodetype; // linked list
}

class node{
  value: number;
  constructor(val: number){
    this.value = val;
  }
}
