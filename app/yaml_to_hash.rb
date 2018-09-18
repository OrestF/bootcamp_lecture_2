require 'yaml'

class YamlToHash
	def yamlconvertor(file)
		yamldata = YAML.load(File.read(file))
		yamldata.each do |element|
			puts element
		end
	end
end
