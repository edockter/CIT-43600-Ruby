class Item < ActiveRecord::Base
    def foo 
        puts "foo"
    end

    def addUp(n1, n2)
        n1 + n2
    end

    def age
        Date.today.year - self.purchase_date.year
    end

end
