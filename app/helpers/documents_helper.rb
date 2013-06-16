module DocumentsHelper
  #noinspection RubyClassVariableUsageInspection
  def markdown(text)
    options ||= [:underline => true, :highlight => true, :space_after_headers => true,
                 :autolink => true, :strikethrough => true]
    @@renderer ||= Redcarpet::Render::HTML.new(:with_toc_data => true, :prettify => true)
    @@markdown ||= Redcarpet::Markdown.new(@@renderer, *options)
    @@markdown.render(text).html_safe
  end
end
