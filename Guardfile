# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard :shell do
  watch('content/*') { |m| `nanoc compile` }
  watch('layouts/*') { |m| `nanoc compile` }
  watch('Guardfile') { |m| `nanoc compile` }
  watch('Rules')     { |m| `nanoc compile` }
end