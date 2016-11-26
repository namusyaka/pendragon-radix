require 'pendragon'
require 'pendragon/router'
require 'r2ree'

module Pendragon
  class Radix < Router
    register :radix

    on(:compile) { |m, rs| tree[m] = R2ree.new(rs.map(&:path)) }
    on(:call) do |env|
      input, method = extract(env)
      return unless current = tree[method]
      if (pos = current.find(input)) && pos >= 0
        map[method][pos].exec(env)
      end
    end

    def tree
      @tree ||= {}
    end
  end
end
