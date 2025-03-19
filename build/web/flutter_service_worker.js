'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f068489485c1f93afa7412784afae666",
"assets/AssetManifest.bin.json": "ab4e8e8cf32c55457de4d1926b588f0c",
"assets/AssetManifest.json": "4ba8df3df22fbbc6c63ed96d788f9351",
"assets/assets/fonts/Outfit-Black.ttf": "d032ccd62028487a6c8d70a07bda684b",
"assets/assets/fonts/Outfit-Bold.ttf": "e28d1b405645dfd47f4ccbd97507413c",
"assets/assets/fonts/Outfit-ExtraBold.ttf": "d649fd9b3a7e7c6d809b53eede996d18",
"assets/assets/fonts/Outfit-ExtraLight.ttf": "f257db4579a91feb1c1f0e80daae48ae",
"assets/assets/fonts/Outfit-Light.ttf": "905f109c79bd9683fc22eaffe4808ffe",
"assets/assets/fonts/Outfit-Medium.ttf": "3c88ad79f2a55beb1ffa8f68d03321e3",
"assets/assets/fonts/Outfit-Regular.ttf": "9f444021dd670d995f9341982c396a1d",
"assets/assets/fonts/Outfit-SemiBold.ttf": "f4bde7633a5db986d322f4a10c97c0de",
"assets/assets/images/cv.png": "dbdde71948d26e8cfdada2be322017b0",
"assets/assets/images/maps.png": "005c89507d764bf4ad1ae9d31401bbb2",
"assets/assets/images/offline.jpg": "8f84ce99ff428650d6e64115baee5c86",
"assets/assets/images/product/1.jpg": "a063e42a07b634b36b50f15ae25cc331",
"assets/assets/images/product/10.jpg": "5bd0c2b163970a1e9103c895ab023bc0",
"assets/assets/images/product/2.jpg": "9e94bc50d243c995c60d907ffce03820",
"assets/assets/images/product/3.jpg": "12fac0120cb1fb1b477a0e9d6c289be6",
"assets/assets/images/product/4.jpg": "332aaf2582e95c502da0481117765a92",
"assets/assets/images/product/5.jpg": "1b7dc71c4f89ef3ffe0a684414504b37",
"assets/assets/images/product/6.jpg": "0d8a8eb7974b5760a82a41d32f0539fb",
"assets/assets/images/product/7.jpg": "fcb148c4b912191115444a59b92eb23b",
"assets/assets/images/product/8.jpg": "748c226d039d178cb5abbfbc04ce20c9",
"assets/assets/images/product/9.jpg": "2c9a0572549b539482d35d89792abcf9",
"assets/assets/images/testimony/1.png": "d919dbad80b5751f5c4966aee13b344d",
"assets/assets/images/testimony/10.png": "a9156dfca0da75b112578227c33afdd9",
"assets/assets/images/testimony/2.png": "53b44578ecf6e6537b12b46048330c05",
"assets/assets/images/testimony/3.png": "c5745b5b0e52b3ceea3ed07fb980d96a",
"assets/assets/images/testimony/4.png": "d006ae20d38911492e3736c6ad998da2",
"assets/assets/images/testimony/5.png": "10c1835d222c4f3ebd6eddf95e4dfe29",
"assets/assets/images/testimony/6.png": "07a01e469d2480593c2d91458615c5c7",
"assets/assets/images/testimony/7.png": "4797128f5e5f758ef08ec4f4f4cca0c9",
"assets/assets/images/testimony/8.png": "789f58f079a3dd48f566f12d20644bc4",
"assets/assets/images/testimony/9.png": "9533ea812ddd1f9d0eb1d8da6c1a4fad",
"assets/assets/images/underwear.png": "4474cfcea42e8d5f9da41a734cff87e7",
"assets/assets/images/warehouse.png": "89f0c538df19ed4e185315f6a2cd45e1",
"assets/FontManifest.json": "7ba38f5ad1686f49b0768b377444458a",
"assets/fonts/MaterialIcons-Regular.otf": "4323d1269dd1088f46d07f8675695504",
"assets/NOTICES": "6720f7dba4173ffc2817b6e47ef88acb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/ionicons/assets/fonts/Ionicons.ttf": "a48ca9e5bcc89fccac32592416234257",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.ico": "1f3b60da049966088e0629c88da8e25f",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "d989ae573fd2cecaf61b3adbb5fdf6a0",
"icons/apple-touch-icon.png": "b50f2860a3bf4cc2c48906287ae75538",
"icons/favicon-16x16.png": "a8ba4703f8cf1eaad837a8de2b3e0593",
"icons/favicon-32x32.png": "c988df2c7853df3f9c2324907af9cae6",
"icons/Icon-192x192.png": "0d27cf4d4d22f8753526fe62c76bde53",
"icons/Icon-512x512.png": "65161bb588d5e11d58e95575262898e9",
"index.html": "f2395800571432a2497f990563b0d90e",
"/": "f2395800571432a2497f990563b0d90e",
"main.dart.js": "26f0885862339b7c424e6be86cb1b38e",
"manifest.json": "1877717a129fedf05315db6dc0501fd9",
"version.json": "35167b40215a675959931d2b0013cdbb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
