
let ressource = [
  '/offline/offline-landing.html',
];

const CACHENAME = 'offline landing';

self.addEventListener('install', (event) => {
  event.waitUntil((async () => {
    const cache = await caches.open(CACHENAME);
    await cache.addAll(ressource);
  })());
});

self.addEventListener('activate', (event) => {
  event.waitUntil((async () => {
    if ('navigationPreload' in self.registration) {
      await self.registration.navigationPreload.enable();
    }
  })());
  self.clients.claim();
});

self.addEventListener('fetch', (event) => {
  if (event.request.mode === 'navigate') {
    event.respondWith((async () => {
      try {
        const preloadResponse = await event.preloadResponse;
        if (preloadResponse) {
          return preloadResponse;
        }
        return await fetch(event.request);
      } catch (error) {
        console.log('Fetch failed; returning offline page instead.', error);
        const cache = await caches.open(CACHENAME);
        return await cache.match(ressource[0]);
      }
    })());
  }
});
