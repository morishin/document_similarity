require "test_helper"

class DocumentSimilarityTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DocumentSimilarity::VERSION
  end

  def test_calculate_similarity
    doc1 = 'AAA BBB CCC'
    doc2 = 'BBB CCC DDD'
    doc3 = 'DDD EEE FFF'
    assert ::DocumentSimilarity.similarity(doc1, doc2) == ::DocumentSimilarity.similarity(doc2, doc1)
    assert ::DocumentSimilarity.similarity(doc1, doc2) > ::DocumentSimilarity.similarity(doc2, doc3)
  end
end
