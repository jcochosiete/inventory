module DashboardHelper
    def pretty_status (status)
        return "Assigned" if status 

        "Available"
    end
end
