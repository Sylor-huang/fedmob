module ApplicationHelper
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
end
