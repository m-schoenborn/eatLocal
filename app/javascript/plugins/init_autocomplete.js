import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    const autoComplete = places({ container: addressInput });
    autoComplete.on('change', (event) => {
      const { lat, lng }  = event.suggestion.latlng;
      document.getElementById('search_lat').value = lat;
      document.getElementById('search_lng').value = lng;
    });
  }
};

export { initAutocomplete };
