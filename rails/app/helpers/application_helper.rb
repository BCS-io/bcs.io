module ApplicationHelper
  def render_svg(name, styles: "", title: nil)
    filename = "media/images/#{name}.svg"
    title ||= name.underscore.humanize
    inline_svg_pack_tag(filename, aria: true, nocomment: true, title: title, class: styles)
  end
end
