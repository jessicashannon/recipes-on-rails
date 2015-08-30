class Wine < ActiveRecord::Base
  w = WineDotComApiRequest.new(:search => 'mondavi cabernet',
                             :format => :xml,
                             :resource => :catalog,
                             :size => 1,
                             :offset => 0)

res = w.query
end
