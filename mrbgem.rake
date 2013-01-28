MRuby::Gem::Specification.new('mruby-winapp') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'

  # NOTE: This mrbgem makes windows binary. It don't show command prompt.
  if ENV['OS'] == 'Windows_NT'
    if spec.cc.command =~ /gcc/
      spec.linker.flags << '-mwindows'
    elsif spec.cc.command =~ /cl(\.exe)?$/
      spec.linker.flags << '/SUBSYSTEM:WINDOWS'
    end
  end
end
