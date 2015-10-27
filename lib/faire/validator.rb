module Faire
  module Validator
    def validate!
      validate || (raise Error::RequiredParametersMissing, "required parameters missing")
    end

    def validate
      @valid = self.class.required_inputs.all?{|object| self.public_send(object.name) }
    end

    def valid?
      @valid == true
    end
  end
end
