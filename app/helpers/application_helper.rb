module ApplicationHelper

  def flash_class
    classes = ['alert']
    if flash[:notice]
      classes << 'alert-success'
    elsif flash[:error]
      classes << 'alert-danger'
    end
    classes.join(' ')
  end

  def flash_message
    flash[:notice] || flash[:error]
  end

  def markdown(text)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new).render(text)
  end

end
