# -*- coding: utf-8 -*-

#webkit2を使いたかったね…
require "webkit-gtk2"

Plugin.create(:mikurome) do

	tab(:mikurome, "〄") do
		settings = WebKitGtk2::WebSettings.new
		#settings.set_property("enable-default-context-menu", "true")
		view = WebKitGtk2::WebView.new
		view.set_settings(settings)
		view.load_uri("https://www.google.co.jp/")
		nativewidget view.show_all
	end

end
