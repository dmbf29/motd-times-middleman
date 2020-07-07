const timeZones = document.querySelector('#time_zones')
if (timeZones) {
  timeZones.addEventListener('change', (event) => {
    const newZone = event.currentTarget.value
    // window.location.replace('https://developer.mozilla.org/en-US/docs/Web/API/Location.reload');
    let url = window.location.href.split('?')[0] += `?timezone=${newZone}`;
    window.location.href = url;
  })
}
