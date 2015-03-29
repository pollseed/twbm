module Admin::HashTagsHelper
  def hash_tags?
    hash_tags
  end

  def hash_tags
    @hash_tags ||= HashTag.find_by
  end
end
