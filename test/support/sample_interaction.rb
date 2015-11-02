class Bill
  include Virtus.model

  attribute :name
end

class SampleInteraction
  include Faire

  input :some_string, klass: String
  input :name, nullify_blank: true
  input :other, required: false
  input :bill, klass: Bill

  def execute
    bill
  end
end
