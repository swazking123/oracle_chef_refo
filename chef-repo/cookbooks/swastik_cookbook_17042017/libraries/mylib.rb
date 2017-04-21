module OracleCorp
   class Weblogic
        @@static_var = 0
        attr_accessor :awesome_level
        def initialize(awesome_level_temp)
        @awesome_level = awesome_level_temp
        @@static_var = awesome_level_temp
        end
        def self.info
        puts "I am in method info"
        @@static_var
        end
   end

   class Oracle
        attr_accessor :awesome_level
        def initialize(awesome_level_temp)
        @awesome_level = awesome_level_temp
        end
   end
end

webObj=OracleCorp::Weblogic.new(30)
puts "My initial level is #{webObj.awesome_level}"

oraObj=OracleCorp::Oracle.new(34)
puts "My new level is #{oraObj.awesome_level}"

puts OracleCorp::Weblogic.info
