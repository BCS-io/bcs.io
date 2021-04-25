class Breadcrumb
  attr_reader :name, :path

  def initialize(name:, path: nil)
    @name = name
    @path = path
  end

  def link?
    @path.present?
  end
end
