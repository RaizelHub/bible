import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
const root = path.resolve('docs');
const types = {'.html':'text/html', '.css':'text/css', '.js':'application/javascript', '.json':'application/json', '.png':'image/png', '.ttf':'font/ttf', '.wasm':'application/wasm', '.otf':'font/otf', '.apk':'application/vnd.android.package-archive'};
const server = http.createServer((req,res)=>{
  let request;
  try { request = decodeURIComponent(new URL(req.url,'http://localhost').pathname); } catch { res.writeHead(400).end(); return; }
  request = request.replace(/^\/bible(?=\/|$)/, '') || '/';
  const file = path.resolve(root, '.' + (request.endsWith('/') ? request+'index.html' : request));
  if (!file.startsWith(root + path.sep) || !fs.existsSync(file) || !fs.statSync(file).isFile()) { res.writeHead(404).end('Not found'); return; }
  res.writeHead(200, {'Content-Type':types[path.extname(file)] || 'application/octet-stream'});
  fs.createReadStream(file).pipe(res);
});
server.listen(4173,'127.0.0.1',()=>console.log('Stillword preview: http://127.0.0.1:4173/bible/'));
