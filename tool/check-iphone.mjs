import {chromium} from './browser/node_modules/playwright-core/index.mjs';
import assert from 'node:assert/strict';
const browser=await chromium.launch({executablePath:process.env.CHROME_PATH||'C:/Program Files/Google/Chrome/Application/chrome.exe',headless:true});
try {
 const context=await browser.newContext({viewport:{width:390,height:844},deviceScaleFactor:1,isMobile:true,hasTouch:true});
 const page=await context.newPage();
 const errors=[];page.on('pageerror',e=>errors.push(e.message));
 const requests=[];page.on('request',r=>requests.push(r.url()));
 const base=process.env.SITE_URL||'http://127.0.0.1:4173/bible/';
 await page.goto(base+'iphone.html');
 assert.equal(await page.getByRole('link',{name:'Open iPhone app'}).count(),1);
 await page.getByRole('link',{name:'Open iPhone app'}).click();
 await page.waitForFunction(()=>window.stillwordReady===true,{},{timeout:90000});
 await page.waitForFunction(()=>window.stillwordOfflineReady===true,{},{timeout:90000});
 const manifest=await (await page.request.get(base+'app/manifest.json')).json();
 assert.equal(manifest.display,'standalone');assert.equal(manifest.scope,'./');
 async function accessibility(){
   const placeholder=page.locator('flt-semantics-placeholder');
   if(await placeholder.count())await placeholder.evaluate(e=>e.click());
 }
 await accessibility();
 const welcome=page.getByRole('button',{name:'Start reading',exact:true});
 await welcome.waitFor();
 await welcome.click();
 await welcome.waitFor({state:'hidden'});
 await page.waitForTimeout(500); // Let the reading-card entrance finish before capture.
 await page.screenshot({path:'artifacts/iphone-web-app.png'});

 const save=page.getByRole('button',{name:'Save verse',exact:true});
 await save.click();
 await page.getByRole('button',{name:'Mark as read',exact:true}).click();
 await page.getByRole('button',{name:'Add reflection',exact:true}).click();
 await page.getByRole('textbox').fill('Carry patience into today.');
 await page.getByRole('button',{name:'Save reflection',exact:true}).click();
 await page.getByRole('tab',{name:/Saved/}).click();
 await page.getByRole('button',{name:'Remove saved verse',exact:true}).last().waitFor();
 await page.getByRole('textbox').fill('patience');
 await page.getByText('Carry patience into today.',{exact:true}).last().waitFor();
 await context.setOffline(true);
 await page.reload();
 await page.waitForFunction(()=>window.stillwordReady===true,{},{timeout:60000});
 await accessibility();
 await page.getByRole('tab',{name:/Saved/}).click();
 await page.getByRole('button',{name:'Remove saved verse',exact:true}).last().waitFor();
 await page.getByText('Carry patience into today.',{exact:true}).last().waitFor();
 await page.getByRole('tab',{name:/Rhythm/}).click();
 await page.getByText('No scheduled notifications in the web app',{exact:true}).waitFor();
 assert.equal(await page.getByRole('button',{name:'Enable all reminders',exact:true}).count(),0);
 const foreign=requests.filter(url=>!url.startsWith(new URL(base).origin)&&!url.startsWith('blob:')&&!url.startsWith('data:'));
 assert.deepEqual(foreign,[],'App must not depend on a third-party CDN.');
 assert.deepEqual(errors,[]);
 console.log('PASS: welcome, reading completion, reflection editing/search, saved verse and reflection after offline reload, standalone manifest, notification limitation, no external resources.');
} finally {await browser.close();}
