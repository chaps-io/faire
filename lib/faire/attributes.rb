module Faire
  module Attributes
    def required_inputs
      inputs.select(&:required?)
    end

    def inputs
      @inputs ||= []
    end

    def defaults
      { nullify_blank: true, required: true, klass: BasicObject }.freeze
    end

    def input(name, **attributes)
      attributes = defaults.merge(attributes)

      self.inputs << Input.new(name, attributes)
      self.attribute(name, attributes[:klass], attributes)
    end
  end
end
