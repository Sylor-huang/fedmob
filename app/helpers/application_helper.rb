module ApplicationHelper
  include LetterAvatar::AvatarHelper
  def html_title(*args)
    base_title = "FedMob-Test-Project"
    if args.empty?
      title = @html_title || []
      title << base_title
      title.reject(&:blank?).join(' - ')
    else
      @html_title ||= []
      @html_title += args
    end
  end

  def user_picture(user,opts={})
    letter_avatar_tag(Pinyin.t(user.name), 200, class:"#{opts[:class]}")
    # letter_avatar_tag(user.name,600,class:"#{opts[:class]}")
  end

  def table_index(page, index)
    (page.to_i - 1) * 15 + 1 + index.to_i
  end

  def rename_time(time)
    return "" if time.blank?
    time.strftime('%Y-%m-%d %H:%M')
  end
end
