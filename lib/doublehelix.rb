require_relative "doublehelix/generate"

module DoubleHelix
  class << self
    def run_code
      prog = [code.gsub(ANY_TWO_CHARS) {|s| DoubleHelix::ENCODING[s] }].pack PACK_CODE
      eval prog
    end

    def code
      @code ||= String.new
    end
  end
end

# for compatibility
def doublehelix(*args)
  DoubleHelix.generate(*args)
end

DoubleHelix::ENCODING.each_key do |k|
  define_method(k) { DoubleHelix.code << k; 0 }

  k.each_char do |c|
    define_method(c) { DoubleHelix.code << c; 0 } unless respond_to? c.to_sym
  end
end

at_exit { DoubleHelix.run_code }
