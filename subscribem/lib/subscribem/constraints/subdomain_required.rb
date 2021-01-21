module Subscribem

    module Constraints
        class SubdomainRequired
            def self.matches?(request)
                request.subdomain.present? && request.subdomain != "wwww"
            end
        end
    end

end