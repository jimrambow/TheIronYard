module WelcomeHelper
  def some_helper_method
    # %ul
    #   %li Some text
    #   %li Some more text
    #   %li Some more more text
    # Does not work!
    # content_tag(:ul, content_tag(:li, "Sam"),  content_tag(:li, "Rob"))

    content_tag(:ul, 
      # @list_of_students.map{ |obj| "<li>#{obj}</li>" }.join("").html_safe
      @list_of_students.map{ |obj| "<li class='#{obj.downcase}'>#{obj}</li>" }.join("").html_safe,
      class: "students_list"
    )
    # "Hey Ben. HOw was your weekend?"
  end
end
  