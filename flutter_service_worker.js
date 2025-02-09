'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a1cd6d81178a16feceb7292d6a563d47",
"assets/AssetManifest.bin.json": "e27a3650052bafefed8477b8fd59b3d9",
"assets/AssetManifest.json": "fc1e52d1c92120b32b394ba9badd614f",
"assets/assets/bm/bm1.png": "743bc2b9739a2443400f632565a8028c",
"assets/assets/bm/bm10.png": "8aa1181a1deaf1ab7e13238539bc467d",
"assets/assets/bm/bm2.png": "6063aba5c49a60517d2a66ef312a558b",
"assets/assets/bm/bm3.png": "c70481602b92657e3a5f71fece011fcf",
"assets/assets/bm/bm4.png": "c5c93c04612f7797a45a205c45532ccb",
"assets/assets/bm/bm5.png": "bd5f2e0c46241ce247703ac8cc54cc9b",
"assets/assets/bm/bm6.png": "c066543a0c23e0b51c3fdc8d65246451",
"assets/assets/bm/bm7.png": "972e4ac59e0a1987b2e2a106b40bf84e",
"assets/assets/bm/bm8.png": "60cbe34a6fb511e06b6c0846156a3060",
"assets/assets/bm/bm9.png": "0eff6237b564c5da535d1a2ee40f7577",
"assets/assets/easy_pgp/easypgp.png": "6cda89fde3ae38cba037c83552cd54d5",
"assets/assets/easy_pgp/easypgp1.png": "ec4609a0ca4c076f9b3d3bc68b999789",
"assets/assets/easy_pgp/easypgp2.png": "ac9dbbfc2071dc65f9af87eabea42858",
"assets/assets/easy_pgp/easypgp3.png": "50cfbcd06a1d6e0b55c1a89b244d05e3",
"assets/assets/easy_pgp/easypgp4.png": "80596304ec7d293ba85f89a519056ff4",
"assets/assets/easy_pgp/easypgp5.png": "38788e229aa313d399f897d65bf6225b",
"assets/assets/easy_pgp/easypgp6.png": "66126281b9c978a9326662bc00c7f3cc",
"assets/assets/easy_pgp/easypgp7.png": "307de12d45ccacae9c370ef564320e41",
"assets/assets/horizon/horizon.png": "1ea260a8c51f99d51b66bcd91c426358",
"assets/assets/horizon/horizon1.png": "423bd760f22aa94d522640ad4c18ae05",
"assets/assets/horizon/horizon2.png": "5a5a9a2adde796af5ed946fdbf06006f",
"assets/assets/horizon/horizon3.png": "bcf5bdcf36b2864a0c5553fad65a3fad",
"assets/assets/horizon/horizon4.png": "aad87c8f8ca982456a572a9cdeff9d8b",
"assets/assets/horizon/horizon5.png": "3bb516d986e8f0b9153a9a5906714fc4",
"assets/assets/icons/github.png": "1b9b9f71269e504156ce9d89a00f2551",
"assets/assets/icons/instagram.png": "cc1e9597ab5186deeedcad484d27778d",
"assets/assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/icons/telegram.png": "d28cb5ebc39b6fef79a5367b5bb987a6",
"assets/assets/icons/url.png": "d3c424452474d090a9190fb1b75ab707",
"assets/assets/kami/kami.png": "d7dd2c6220238ecc860deb73f0932ab9",
"assets/assets/kami/kami1.png": "eb3c8360aeccc1b73ed21ec6ed10dc85",
"assets/assets/kami/kami3.png": "b7af403774d22e97bb3c2c9a099a28a7",
"assets/assets/kami/kami4.png": "99e59841ca89e7ee7c62d52a5cd617a7",
"assets/assets/kami/kami5.png": "a5468bbee63180590dfef13db12acd35",
"assets/assets/kami/kami6.png": "66fe8fc96e3deb3048fd5dce440280cc",
"assets/assets/kami/kami7.png": "2e89d58f17bf3fcef7d00ebf01a4f42e",
"assets/assets/null_end_browser/null_end_browser_1.png": "a81594837097762ced8879d4299184c7",
"assets/assets/null_end_browser/null_end_browser_2.png": "cae8d9483c6da460c6dda95eced595b6",
"assets/assets/null_end_browser/null_end_browser_3.png": "a904e13ce10650ba2d2231cfde75d642",
"assets/assets/null_end_browser/null_end_browser_4.png": "47f77fd2d9696681dcbc97a953a3fd46",
"assets/assets/null_end_browser/null_end_browser_6.png": "b5b66b213fbce02a1fa7e196a4b4b6e2",
"assets/assets/null_end_browser/null_end_browser_7.png": "4f149c819193038b4314f8c42d8bc042",
"assets/assets/null_end_browser/null_end_browser_8.png": "058716dcef95e30ebef4fd1364800073",
"assets/assets/null_end_vpn/nullendvpn.png": "8bae80c680f304935be053ccef579bc9",
"assets/assets/null_end_vpn/nullendvpn1.png": "f7026bd5577d15fc5bb415f02ce4ec94",
"assets/assets/null_end_vpn/nullendvpn3.png": "a09d322e111aaaef6a15112b2b55cbfc",
"assets/assets/null_end_vpn/nullendvpn4.png": "c45730047cddce8b4a2b74a97b203cff",
"assets/assets/null_end_vpn/nullendvpn5.png": "8a27b3fce1976f3b4271ff68d1a0ed97",
"assets/assets/null_end_vpn/nullendvpn6.png": "c06148b9e5dcaf6ce435cce12728dd66",
"assets/assets/null_end_vpn/nullendvpn7.png": "3a9ffd36977c7c43565546faacc31d75",
"assets/assets/papi_burgers/papi.png": "d9b02ab834c92e6d8dfc2ec198f61d7b",
"assets/assets/papi_burgers/papi0.png": "ebd4e5ef76998fdb5534012ee8c8d047",
"assets/assets/papi_burgers/papi1.png": "515f5541e04f798d211639dd32b49116",
"assets/assets/papi_burgers/papi2.png": "93de8399de8a31269e635c4eb22c7fed",
"assets/assets/papi_burgers/papi4.png": "e21a1809a76894278d11de6c0b4f2537",
"assets/assets/papi_burgers/papi5.png": "4103ed36ef7898874d6f4a8aeee2af92",
"assets/assets/papi_burgers/papi6.png": "9bb574f2ad9a12048fcc94a9f481729c",
"assets/assets/papi_burgers/papi7.png": "194276e078a7338c6ed88c1636885611",
"assets/assets/papi_burgers/papi8.png": "c30acfea90b39253da32eb65036f5d55",
"assets/assets/taxi_app/taxi.png": "480e97f0ff749e6e859b5309d350ac4b",
"assets/assets/taxi_app/taxi1.png": "7f1a23d1c1123fe08815b231c49368ac",
"assets/assets/taxi_app/taxi2.png": "75306a78cedb29b8779e297e3436c5f7",
"assets/assets/taxi_app/taxi3.png": "78bcfa1bd0a4408a0192e198c7d4da01",
"assets/assets/taxi_app/taxi4.png": "2ab2524bc6e22698a1c7959a2673aed6",
"assets/assets/taxi_app/taxi5.png": "95b96f725bb4944f656875c479f22517",
"assets/assets/taxi_app/taxi6.png": "67e9a0a04c93b7bb3cb503e178c45574",
"assets/assets/taxi_app/taxi7.png": "b8052e8f8c1d53c6c98ceb6d88f0187d",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "0e6b016990cf441cfe619c31ae763c16",
"assets/NOTICES": "edcbfcf956a0523a504de29b5f2d3803",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "60618dd83de2a4e2453b78c6f4e74197",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "742428e5a50926134a44943e93893a92",
"/": "742428e5a50926134a44943e93893a92",
"main.dart.js": "5f13bf47903450618399639eb7678613",
"manifest.json": "306a2d68a595a5b467b3bc3a1fcb0619",
"url.png": "d3c424452474d090a9190fb1b75ab707",
"version.json": "27923da809c79ed8660d3d3ea87778e4"};
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
