#spec/new_ruby_spec

require 'new_ruby'

RSpec.describe Node do
  let(:node) { Node.new(10) }
  describe "#element" do
    it "new node is created" do
      new_node = node.element
      expect(new_node).to eq(10)
    end
  end
end

RSpec.describe Stack do
  describe "#push" do
    it "pushes a node item into the stack" do
      stack = Stack.new
      stack.push(1)
      expect(stack.to_s).to eq("[1]")
    end
  end

  describe "#pop" do
    it "pop of the most recent node of the stack" do
      stack = Stack.new
      stack.push(5)
      stack.push(6)
      stack.pop
      expect(stack.to_s).to eq("[5]")
    end
  end

  describe "#to_s" do
    it "returns a string representation of the stack" do
      stack = Stack.new
      stack.push(1)
      stack.push(2)
      expect(stack.to_s).to eq("[2 1]")
    end
  end
  describe "#is_empty?" do
    it "returns true when the stack is empty" do
    stack = Stack.new
    expect(stack.is_empty?).to be true
    end
  end
end
