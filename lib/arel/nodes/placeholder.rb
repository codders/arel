module Arel
  module Nodes
    class Placeholder < Arel::Nodes::Unary
      def initialize(key, hash)
        super(key)
        @hash = hash
      end

      def resolve
        @hash[@expr]
      end
    end
  end
end
