module Jekyll
	module LinkFilter
		def link_url(input)
			# This is taken from https://github.com/jekyll/jekyll/blob/d971e39b4feca9c8d2e8c7e954aa78713ce4eb90/lib/jekyll/tags/link.rb
			# Tweaked to work via filters.
			site = @context.registers[:site]
			relative_path = Liquid::Template.parse(input).render(@context)

			site.each_site_file do |item|
				return relative_url(item) if item.relative_path == relative_path
				# This takes care of the case for static files that have a leading /
				return relative_url(item) if item.relative_path == "/#{relative_path}"
			end

			raise ArgumentError, <<~MSG
			Could not find document '#{relative_path}' in filter '#{__method__}'.
			Make sure the document exists and the path is correct.
			MSG
		end
	end
end

Liquid::Template.register_filter(Jekyll::LinkFilter)
