class ItemImport
   def self.import
    nokodoc = File.open("MagicItems.xml") { |f| Nokogiri::XML(f) }
    doc = Hash.from_xml(nokodoc.to_s)
    doc["compendium"]["item"].each do |item|
      Item.create! name:        item.fetch("name"), 
                   weight:      item.fetch("weight",0), 
                   ac: item.fetch("ac", 0), 
                   text:        item.fetch("text").compact.join("\n")
      end
  end
end