# frozen_string_literal: true

require 'zeitwerk'

inflector_class = Class.new(Zeitwerk::Inflector) do
  def camelize(basename, abspath)
    case basename
    when 'version'
      'VERSION'
    else
      super(basename.tr('-', '_'), abspath.tr('-', '_'))
    end
  end
end

loader = Zeitwerk::Loader.new
loader.inflector = inflector_class.new
loader.push_dir(__dir__ + '/..')
loader.setup
loader.eager_load
