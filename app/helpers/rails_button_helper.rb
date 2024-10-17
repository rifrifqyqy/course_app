module RailsButtonHelper
  def railsbutton_primary(text = "Click Me", url = "#", class_name = nil)
    # Jika class_name kosong atau nil, gunakan default class
    default_class = "bg-zinc-800 text-white font-medium px-4 py-2 rounded-full w-fit"
    link_to text, url, class: class_name.presence || default_class
  end
  def railsbutton_secondary(text = "Click Me", url = "#", class_name = nil)
    # Jika class_name kosong atau nil, gunakan default class
    default_class = "bg-zinc-200 text-zinc-800 font-medium px-4 py-2 rounded-full w-fit"
    link_to text, url, class: class_name.presence || default_class
  end
end
