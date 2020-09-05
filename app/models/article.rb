class Article < ApplicationRecord
  # include SearchAble
  scope :target_search, -> (search) {ransack(title_cont: search).result(distinct: true)}

  belongs_to :user, counter_cache: true
  validates :title, uniqueness: {:message=> "文章已存在"},presence: {message: "标题不能为空"}
  validates :content,presence: {message: "内容不能为空"}
end
