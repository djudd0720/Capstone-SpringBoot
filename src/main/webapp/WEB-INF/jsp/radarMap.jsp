
<!DOCTYPE html>
<html>
    <head>
        <title>weatherradarmapHTML</title>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <style type='text/css'>body{margin:0;padding:0;overflow:hidden;font-family:'Segoe UI',Helvetica,Arial,Sans-Serif}</style>
    </head>
    <body>
        <div id='printoutPanel'></div>
        
        <div id='myMap' style='width: 100vw; height: 100vh;'></div>
        <script type='text/javascript'>
            function loadMapScenario() {
                var map = new Microsoft.Maps.Map(document.getElementById('myMap'), {
                    /* No need to set credentials if already passed in URL */
                    center: new Microsoft.Maps.Location(39.1887643719098, -92.8261546188403),
                    zoom: 5 });
                // tile url from Iowa Environmental Mesonet of Iowa State University
                var urlTemplate = 'https://mesonet.agron.iastate.edu/cache/tile.py/1.0.0/nexrad-n0q-{timestamp}/{zoom}/{x}/{y}.png';
                var timestamps = ['900913-m50m', '900913-m45m', '900913-m40m', '900913-m35m', '900913-m30m', '900913-m25m', '900913-m20m', '900913-m15m', '900913-m10m', '900913-m05m', '900913'];
                var tileSources = [];
                for (var i = 0; i < timestamps.length; i++) {
                    var tileSource = new Microsoft.Maps.TileSource({
                        uriConstructor: urlTemplate.replace('{timestamp}', timestamps[i])
                    });
                    tileSources.push(tileSource);
                }
                var animatedLayer = new Microsoft.Maps.AnimatedTileLayer({ mercator: tileSources, frameRate: 500 });
                map.layers.insert(animatedLayer);
                
            }
        </script>
        <!-- /* bing maps key needed below */ -->
        <script type='text/javascript' src='http://www.bing.com/api/maps/mapcontrol?key=AgxhoWzhAYu2pzGv4tiFxOVjL2YVqQIOJD9Q08LxlpO22Tos46PtZWQXkY3NkRvV&callback=loadMapScenario' async defer></script>
    </body>
</html>