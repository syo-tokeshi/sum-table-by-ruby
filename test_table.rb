require './table.rb'
require 'minitest/autorun'

class TableTest < Minitest::Test

  # テーブルのデータが有効か確認
  def test_valid_table_data
    assert Table.get_table_data
  end

  # 行の合計を計算出来るか
  def test_add_line_sum
    assert_equal 206,Table.add_line_sum[0][-1]
  end

  # 列の合計を計算出来るか
  def test_column_sum
    assert_equal 258,Table.column_sum[-1][0]
  end

  # 合計したテーブルが作れることを確認
  def test_genarate_table
    assert Table.genarate_table
  end

end