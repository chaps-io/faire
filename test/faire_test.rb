require "test_helper"

class FaireTest < MiniTest::Test
  def test_run_returns_output_if_input_is_correct
    interactor = SampleInteraction.run!(name: "asd", bill: { name: "ZOMG" }, other: 123)
    assert_equal Bill, interactor.class
  end

  def test_run_raises_error_if_input_is_incorrect
    assert_raises Faire::Error::RequiredParametersMissing do
      SampleInteraction.run!(bill: { name: "ZOMG" }, other: 123)
    end
  end

  def test_run_returns_interactor_class_if_output_is_correct
    interactor = SampleInteraction.run(name: "asd", bill: { name: "ZOMG" }, other: 123)
    assert_equal Faire::Interactor, interactor.class
    assert_equal "ZOMG", interactor.result.name
  end
end
