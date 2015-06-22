module ApplicationHelper

    # Returns the full title on a per-page basis.
    # The full_title method is automatically available in all our views.
    def full_title(page_title = '')
       base_title = "Microblogs App"
       if page_title.empty?
           base_title
       else
           page_title + " | " + base_title
       end
    end
end
