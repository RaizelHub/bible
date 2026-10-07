'use strict';
const offlineState = document.getElementById('offline-state');
if ('serviceWorker' in navigator) {
  navigator.serviceWorker.register('sw.js', {scope:'./', updateViaCache:'none'}).then(registration => {
    const failed = () => { offlineState.textContent = 'Offline setup incomplete — reconnect and reopen'; };
    function observe(worker) {
      if (!worker) return;
      worker.addEventListener('statechange', () => {
        if (worker.state === 'redundant') failed();
      });
    }
    observe(registration.installing);
    registration.addEventListener('updatefound', () => observe(registration.installing));
    return navigator.serviceWorker.ready;
  }).then(() => {
    offlineState.textContent = 'Ready offline';
    window.stillwordOfflineReady = true;
  }).catch(() => { offlineState.textContent = 'Online reading · offline storage unavailable'; });
} else {
  offlineState.textContent = 'Online reading · offline storage unavailable';
}
