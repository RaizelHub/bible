import { chromium } from './browser/node_modules/playwright-core/index.mjs';
import assert from 'node:assert/strict';
import fs from 'node:fs';
const chrome = process.env.CHROME_PATH || 'C:/Program Files/Google/Chrome/Application/chrome.exe';
const browser = await chromium.launch({executablePath:chrome,headless:true});
try {
 const page=await browser.newPage({viewport:{width:1440,height:1100},deviceScaleFactor:1});
 const errors=[];
 page.on('pageerror',error=>errors.push(error.message));
 const base = process.env.SITE_URL || 'http://127.0.0.1:4173/bible/';
 await page.goto(base,{waitUntil:'networkidle'});
 await page.evaluate(()=>document.fonts.ready);
 await page.evaluate(()=>Promise.all(document.getAnimations().map(a=>a.finished)));
 await page.screenshot({path:'artifacts/website-desktop.png',fullPage:true,animations:'disabled'});
 await page.screenshot({path:'artifacts/website-preview.png',animations:'disabled'});
 await page.getByRole('tab',{name:'Afternoon',exact:true}).click();
 assert.equal(await page.locator('#verse-reference').textContent(),'Philippians 4:6');
 await page.getByRole('tab',{name:'Afternoon',exact:true}).press('ArrowRight');
 assert.equal(await page.getByRole('tab',{name:'Night',exact:true}).getAttribute('aria-selected'),'true');
 assert.equal(await page.locator('#verse-reference').textContent(),'John 14:27');
 await page.locator('summary').first().click();
 assert.equal(await page.locator('details').first().getAttribute('open'),'');
 for (const width of [320,390,768,1440]) {
   await page.setViewportSize({width,height:900});
   assert.equal(await page.evaluate(()=>document.documentElement.scrollWidth <= window.innerWidth),true,`overflow at ${width}`);
 }
 await page.setViewportSize({width:390,height:844});
 await page.getByRole('tab',{name:'Morning',exact:true}).click();
 await page.locator('body').press('Control+Home');
 await page.screenshot({path:'artifacts/website-mobile.png',fullPage:true});
 const links = await page.locator('a[href]').evaluateAll(links=>links.map(a=>a.getAttribute('href')));
 for(const href of links.filter(h=>!h.startsWith('http'))) {
   if(href.startsWith('#')) {assert.equal(await page.locator(href).count(),1,href);}
   else if(!href.endsWith('.apk')) {assert.equal((await page.request.get(new URL(href,page.url()).href)).status(),200,href);}
 }
 if (fs.existsSync('docs/downloads/Stillword-android.apk')) {
   const download=page.waitForEvent('download');
   await page.locator('a[download]').click();
   const result=await download;
   assert.equal(result.suggestedFilename(),'Stillword-android.apk');
   assert.equal(await result.failure(),null);
 }
 assert.deepEqual(errors,[]);
 await page.goto(base+'windows.html');
 assert.equal(await page.locator('#windows-download').getAttribute('href'),'https://github.com/RaizelHub/bible/releases/download/windows-v1.3.0/Stillword-Windows-Setup.exe');
 assert.match(await page.locator('main').innerText(),/on and awake/);
 for (const width of [320,390,768,1440]) {
   await page.setViewportSize({width,height:900});
   assert.equal(await page.evaluate(()=>document.documentElement.scrollWidth <= innerWidth),true,`Windows guide overflow at ${width}`);
 }
 await page.screenshot({path:'artifacts/windows-download-page.png',fullPage:true});
 assert.deepEqual(errors,[]);
 console.log('PASS: responsive landing/Windows guide, preview tabs, keyboard navigation, FAQ, local links, available APK download, no page errors.');
} finally { await browser.close(); }
