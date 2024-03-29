# coding: utf-8

require "cld/version"
require "ffi"

module CLD
  extend FFI::Library

  name = FFI::Platform.mac? ? "libcld2.bundle" : FFI.map_library_name("libcld2")
  specification = Gem::Specification.find_by_name("cld2")

  ffi_lib File.join(specification.extension_dir, name)
end

require "cld/encoding.rb"
require "cld/language.rb"
require "cld/detect_language.rb"
require "cld/detect_language_summary.rb"
