// console.log("webpack!");
import "jquery";
import "bootstrap";
import "bootstrap-datepicker";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox.js';
import { initAutocomplete } from '../plugins/init_autocomplete.js';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { popUpImg } from '../plugins/cc-popup-img.js'
// window.$ = $;

$("#case_start_date").datepicker()

initMapbox();
initAutocomplete();
popUpImg();