# frozen_string_literal: true

$LOAD_PATH.prepend(File.join(__dir__, 'lib'))

require 'nanoc-core'

p Nanoc::Core::Thing
