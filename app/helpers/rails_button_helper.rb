module RailsButtonHelper
  # here contain all button components variants

  def railsbutton_primary(text = "Primary Button", url = "#", color: "bg-zinc-800 text-white", padding: "px-4 py-2", btn_class: nil)
    base_class = "font-medium hover:opacity-75 transition-all rounded-full w-fit"
    # merge class variable
    full_class = "#{color} #{padding} #{base_class} #{btn_class}"
    # props
    link_to text, url, class: full_class.strip
  end


  def railsbutton_secondary(text = "Secondary Button", url = "#", color: "bg-zinc-200 text-zinc-800", padding: "px-4 py-2", btn_class: nil)
    base_class = "font-medium hover:opacity-75 transition-all rounded-full w-fit"
    full_class = "#{color} #{padding} #{base_class} #{btn_class}"
    link_to text, url, class: full_class.strip
  end
  
  
end
