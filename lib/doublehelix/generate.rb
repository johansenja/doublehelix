require_relative "version"

module DoubleHelix
  ENCODING      = { "at"=>"00", "cg"=>"01", "gc"=>"10", "ta"=>"11" }.freeze
  PACK_CODE     = "b*".freeze
  OutputFormat  = (f = [[1,0], [0,2], [0,3], [0,4], [1,4], [2,4], [3,3], [4,2], [5,0]]) + f.reverse
  INDENT        = " ".freeze
  STICK         = ?-.freeze
  ANY_TWO_CHARS = /../.freeze

  def self.generate src
    chars_by_number = ENCODING.invert.transform_values { |v| v.split "" }
    src.unpack(PACK_CODE).first.gsub(ANY_TWO_CHARS) do |pair|
      indent_size, width = OutputFormat.first
      OutputFormat.rotate!
      (INDENT * indent_size) << chars_by_number[pair].join(STICK * width) << "\n"
    end
  end
end
