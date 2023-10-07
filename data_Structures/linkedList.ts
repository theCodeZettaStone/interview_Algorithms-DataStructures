interface linkedListType{
  head: null|nodeType;
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
    this.value = val;
    this.nextNode = nN;
  }
}

class linkedList{
  head: null|nodeType;
  constructor(head: null|nodeType = null){
    this.head = head;
  }

  addNode(nN: nodeType){
    let formerHeadNode: null|nodeType = this.head;
    this.head = nN;
    this.head.nextNode = formerHeadNode;
  }
}
