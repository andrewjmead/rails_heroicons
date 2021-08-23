require 'nokogiri'

module RailsHeroicons
  class IconNotFound < Exception
  end

  class Icons
    def icon(name, style, class_name)
      file_path = RailsHeroicons.root("lib/rails_heroicons/icons/#{style}/#{name}.svg")

      begin
        file_data = File.read(file_path)
      rescue
        raise RailsHeroicons::IconNotFound
      end

      if class_name.present?
        frag = Nokogiri::HTML.fragment(file_data)
        frag.child.set_attribute('class', class_name)
        frag.child.set_attribute('alt', name)
        file_data = frag.to_s
      end

      file_data.html_safe
    end
  end
end