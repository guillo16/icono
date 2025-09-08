import "@hotwired/turbo-rails"
import mapboxgl from "mapbox-gl"

import { initMapbox } from "plugins/init_mapbox"

document.addEventListener("turbo:load", () => {
  initMapbox()
})
