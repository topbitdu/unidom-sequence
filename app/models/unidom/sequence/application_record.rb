##
# Application record 是模型的抽象基类。

class Unidom::Sequence::ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
