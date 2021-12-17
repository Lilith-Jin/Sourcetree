class Review < ApplicationRecord
  belongs_to :user
  # 要反查課程才需要加上belongs_to
  belongs_to :course, counter_cache: true
end
