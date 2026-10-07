{{flutter_js}}
{{flutter_build_config}}
const config = {hostElement: document.getElementById('app-host'), canvasKitBaseUrl: 'canvaskit/', canvasKitVariant: 'full'};
_flutter.loader.load({
  config,
  onEntrypointLoaded: async function(engineInitializer) {
    try {
      const runner = await engineInitializer.initializeEngine(config);
      await runner.runApp();
      document.getElementById('loading')?.remove();
      window.stillwordReady = true;
    } catch (error) {
      document.getElementById('loading-message').textContent = 'Could not open Stillword. Connect to the internet and try again.';
      document.getElementById('retry').hidden = false;
      console.error('Stillword could not initialize.');
    }
  }
}).catch(() => {
  document.getElementById('loading-message').textContent = 'Could not load Stillword. Connect to the internet and try again.';
  document.getElementById('retry').hidden = false;
});
