class Bill
  include Virtus.model

  attribute :name
end

class SampleInteraction
  include Faire

  input :name, nullify_blank: true
  input :other, required: false
  input :bill, Bill

  def execute
    bill
  end
end