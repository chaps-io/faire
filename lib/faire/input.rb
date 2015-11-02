module Faire
  class Input
    attr_reader :name

    def initialize(name, required: false, **attributes)
      @name = name
      @attributes = attributes
      @required = !!required
    end

    def required?
      @required == true
    end
  end
end
