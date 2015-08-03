require "./lib/portfolio_calculator"

class PortfolioCalculatorTest < Minitest::Test
  attr_reader :calculator

  def setup

    principle               = 50_000
    monthly_contribution    = 450
    annual_cashflow_needed  = 63_000
    years                   = 6
    calculator = PortfolioCalculator.new(principle,
                                         monthly_contribution,
                                         annual_cashflow_needed,
                                         years
                                         )
  end

  def test_it_can_find_portfolio_goal_from_annual_cashflow_wanted

    goal_portfolio = calculator.calculate_portfolio

    assert_equal 1_236_000, goal_portolio

  end
end
