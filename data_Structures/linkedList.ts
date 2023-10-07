interface linkedListType{
  head: nodeType;
  addNode: Function;
}

interface nodeType{
  nextNode: null|nodeType;
  value: any;
}

class node{
  nextNode: null|nodeType;
  value: any;
  constructor(val: any, nN: null=null){
    value = val;
    nextNode = nN;
  }
}

class linkedList{
  head: null|nodeType;
  constructor(head: null|nodeType){
    this.head = head;
  }

  addNode(nN: nodeType){
    let formerHeadNode: nodeType = this.head;
    this.head = nN;
    this.head.nextNode = formerHeadNode;
  }
}
