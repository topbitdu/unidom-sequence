# Sequence 是序列。

class Unidom::Sequence::Sequence < Unidom::Sequence::ApplicationRecord

  self.table_name = 'unidom_sequences'

  include Unidom::Common::Concerns::ModelExtension

  scope :prefix_is, ->(prefix) { where prefix: prefix }

  def self.generate!(sequentiality_code, prefix = '')
    sequence = prefix_is(prefix).sequentiality_coded_as(sequentiality_code).valid_at.alive.first_or_create!
    sequence.increment! :serial_number
    sequence.serial_number
  end

end
