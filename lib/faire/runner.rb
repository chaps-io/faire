module Faire
  module Runner
    def run(input = {})
      object = new(input)
      Interactor.new(object).tap(&:validate_and_execute)
    end

    def run!(input = {})
      interactor = new(input)
      interactor.validate!
      interactor.execute
    end
  end
end
