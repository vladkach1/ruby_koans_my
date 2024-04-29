require File.expand_path(File.dirname(__FILE__) + '/neo')

# Greed is a dice game where you roll up to five dice to accumulate
# points.  The following "score" function will be used to calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.
#
#
# Examples:
#
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
#
# More scoring examples are given in the tests below:
#
# Your goal is to write the score method.

def score(dice)
  sum=0
  count1=dice.count(1)
  count2=dice.count(2)
  count3=dice.count(3)
  count4=dice.count(4)
  count5=dice.count(5)
  count6=dice.count(6)
  if count1==3
    count1-=3
    sum+=1000
  end
  if count2==3
    sum+=200
  end
  if count3==3
    sum+=300
  end
  if count4==3
    sum+=400
  end
  if count5==3
    count5-=3
    sum+=500
  end
  if count6==3
    sum+=600
  end
  if count1>0
    sum+=count1*100
  end
  if count5>0
    sum+=count5*50
  end
  sum
end

class AboutScoringProject < Neo::Koan
  # def test_score_of_an_empty_list_is_zero
  #   assert_equal 0, score([2,3,4,6,2])
  # end

  # def test_score_of_a_single_roll_of_5_is_50
  #   assert_equal 50, score([5,2,3,4,6])
  # end

  # def test_score_of_a_single_roll_of_1_is_100
  #   assert_equal 100, score([1,2,3,4,6])
  # end

  # def test_score_of_multiple_1s_and_5s_is_the_sum_of_individual_scores
  #   assert_equal 300, score([1,5,5,1,2])
  # end

  # def test_score_of_single_2s_3s_4s_and_6s_are_zero
  #   assert_equal 0, score([2,3,4,6,2])
  # end

  # def test_score_of_a_triple_1_is_1000
  #   assert_equal 1000, score([1,1,1,2,2])
  # end

  # def test_score_of_other_triples_is_100x
  #   assert_equal 200, score([2,2,2])
  #   assert_equal 300, score([3,3,3])
  #   assert_equal 400, score([4,4,4])
  #   assert_equal 500, score([5,5,5])
  #   assert_equal 600, score([6,6,6])
  # end

  # def test_score_of_mixed_is_sum
  #   assert_equal 250, score([2,5,2,2,3])
  #   assert_equal 550, score([5,5,5,5])
  #   assert_equal 1100, score([1,1,1,1])
  #   assert_equal 1200, score([1,1,1,1,1])
  #   assert_equal 1150, score([1,1,1,5,1])
  # end

end
