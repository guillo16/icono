import mapboxgl from 'mapbox-gl';


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [-65.2009048461914, -26.824682235717773],
      zoom: 13

    });

    new mapboxgl.Marker()
    .setLngLat([ -65.2009048461914, -26.824682235717773 ])
    .addTo(map);

    map.addControl(new mapboxgl.NavigationControl());
    map.addControl(new mapboxgl.FullscreenControl());



  }


};


export { initMapbox };


