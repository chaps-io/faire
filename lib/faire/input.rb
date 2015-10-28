module Faire
  class Input
    attr_reader :name

    def initialize(name, **attributes)
      @name = name
      @attributes = attributes
      @required = attributes.fetch(:required, false)
    end

    def required?
      @required == true
    end
  end
end
