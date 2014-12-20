# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

def filter_by_extension(item)
  item[:extension].split('.').reverse.each do |f|
    case f
    when 'md', 'markdown'
      filter :kramdown, coderay_tab_width: 3
    when 'erb'
      filter :erb
    end
  end
end

