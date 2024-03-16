class Node:
    def __init__(self, element):
        self.element = element
        self.next = None
class Stack:
    def __init__(self):
        self.stack = None
    def push(self, element):
        if self.stack == None:
            self.stack = Node(element)
        else:
            new_node = Node(element)
            new_node.next = self.stack
            self.stack = new_node
    def pop(self):
        element = self.stack.element
        self.stack = self.stack.next
        return element
    def is_empty(self):
        return self.stack == None
    def __str__(self):
        if self.stack is None:
            return None
        node = self.stack
        result = "["
        while node is not None:
            result += str(node.element) + " "
            node = node.next
        return result[:-1] + "]"
class Queue:
    def __init__(self):
        self.head = None
        self.tail = None
    def enqueue(self, element):
        if self.head is None:
            self.head = self.tail = Node(element)
        else:
            node = Node(element)
            self.tail.next = node
            self.tail = node
    def dequeue(self):
        element = self.head.element
        if self.tail == self.head:
            self.tail = self.head = None
        else:
            self.head = self.head.next
        return element
    def is_empty(self):
        return self.head is None
    def __str__(self):
        if self.head is None:
            return None
        node = self.head
        result = "["
        while node is not None:
            result += str(node.element) + " "
            node = node.next
        return result[:-1] + "]"