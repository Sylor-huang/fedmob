
module SearchAble
  extend ActiveSupport::Concern

  included do
    scope :target_search, -> (search) {ransack(name_or_email_cont: search).result(distinct: true)}
  end
end