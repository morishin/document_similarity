require 'matrix'
require 'document_similarity/version'

module DocumentSimilarity
  def self.similarity(document, another_document)
    document_words = document.downcase.split(' ')
    another_document_words = another_document.downcase.split(' ')
    all_words = (document_words + another_document_words).uniq
    document_vector = self.document_vector(document_words, all_words)
    another_document_vector = self.document_vector(another_document_words, all_words)
    cosine_similarity = document_vector.inner_product(another_document_vector) / (document_vector.norm * another_document_vector.norm)
    cosine_similarity
  end

  private

  def self.document_vector(document_words, all_words)
    Vector.elements(all_words.map { |word| document_words.select { |document_word| document_word == word }.size / document_words.size.to_f })
  end
end
