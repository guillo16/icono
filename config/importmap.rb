# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/plugins", under: "plugins"
pin_all_from "app/javascript/components", under: "components"
pin "mapbox-gl" # @3.1.2
pin "process" # @2.1.0
