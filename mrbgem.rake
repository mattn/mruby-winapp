MRuby::Gem::Specification.new('mruby-winapp') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'

  # NOTE: This mrbgem makes windows binary. It don't show command prompt.
  if ENV['OS'] == 'Windows_NT'
    spec.mruby_libs = '-mwindows'
  end
end
