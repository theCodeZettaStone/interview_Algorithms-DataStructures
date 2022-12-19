class Queue:
    class Node:
        def __init__(self, data, next_node):
            self.data = data
            self.next_node = next_node
    def __init__(self) -> None:
        self.head = None
        self.tail = None
        self.node = self.Node(None, None)
    def enqueue(self, data):
        if self.head is None and self.tail is None:
            self.tail = self.head = self.Node(data, None)
            return
        self.tail.next_node = self.Node(data, None)
        self.tail = self.tail.next_node
    def dequeue(self):
        if self.head is None:
            return None
        removed_node = self.head
        self.head = self.head.next_node
        if self.head is None:
            self.tail = None
        return removed_node
