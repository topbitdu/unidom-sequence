# Sequence 是序列。

class Unidom::Sequence::Sequence < Unidom::Sequence::ApplicationRecord

  self.table_name = 'unidom_sequences'

  include Unidom::Common::Concerns::ModelExtension

  scope :prefix_is, ->(prefix) { where prefix: prefix }

end
