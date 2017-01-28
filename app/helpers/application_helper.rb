module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Rails Quickstart"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def flash_class(level)
    case level.to_sym
    when :info then "alert-info"
    when :success then "alert-success"
    when :error then "alert-danger"
    when :warning then "alert-warning"
    end
  end

end
