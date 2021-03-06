@echo off

set hostpath=%windir%\system32\drivers\etc

cd /d %hostpath%

if not exist hosts_back (
   copy hosts hosts_back
)

find "203.208.46.161 www.google.com.hk" hosts || (
  echo ## >>hosts
  echo ## >>hosts
  echo ## >>hosts
  echo 203.208.46.161 0.docs.google.com >>hosts
  echo 203.208.46.161 0.drive.google.com >>hosts
  echo 203.208.46.161 1.docs.google.com >>hosts
  echo 203.208.46.161 1.drive.google.com >>hosts
  echo 203.208.46.161 10.docs.google.com >>hosts
  echo 203.208.46.161 10.drive.google.com >>hosts
  echo 203.208.46.161 11.docs.google.com >>hosts
  echo 203.208.46.161 11.drive.google.com >>hosts
  echo 203.208.46.161 12.docs.google.com >>hosts
  echo 203.208.46.161 12.drive.google.com >>hosts
  echo 203.208.46.161 13.docs.google.com >>hosts
  echo 203.208.46.161 13.drive.google.com >>hosts
  echo 203.208.46.161 14.docs.google.com >>hosts
  echo 203.208.46.161 14.drive.google.com >>hosts
  echo 203.208.46.161 15.docs.google.com >>hosts
  echo 203.208.46.161 15.drive.google.com >>hosts
  echo 203.208.46.161 16.docs.google.com >>hosts
  echo 203.208.46.161 16.drive.google.com >>hosts
  echo 203.208.46.161 2.docs.google.com >>hosts
  echo 203.208.46.161 2.drive.google.com >>hosts
  echo 203.208.46.161 3.docs.google.com >>hosts
  echo 203.208.46.161 3.drive.google.com >>hosts
  echo 203.208.46.161 4.docs.google.com >>hosts
  echo 203.208.46.161 4.drive.google.com >>hosts
  echo 203.208.46.161 5.docs.google.com >>hosts
  echo 203.208.46.161 5.drive.google.com >>hosts
  echo 203.208.46.161 6.docs.google.com >>hosts
  echo 203.208.46.161 6.drive.google.com >>hosts
  echo 203.208.46.161 7.docs.google.com >>hosts
  echo 203.208.46.161 7.drive.google.com >>hosts
  echo 203.208.46.161 8.docs.google.com >>hosts
  echo 203.208.46.161 8.drive.google.com >>hosts
  echo 203.208.46.161 9.docs.google.com >>hosts
  echo 203.208.46.161 9.drive.google.com >>hosts
  echo 203.208.46.161 accounts.google.com >>hosts
  echo 203.208.46.161 accounts.l.google.com >>hosts
  echo 203.208.46.161 answers.google.com >>hosts
  echo 203.208.46.161 apis.google.com >>hosts
  echo 203.208.46.161 appengine.google.com >>hosts
  echo 203.208.46.161 apps.google.com >>hosts
  echo 203.208.46.161 appspot.l.google.com >>hosts
  echo 203.208.46.161 bks0.books.google.com >>hosts
  echo 203.208.46.161 bks1.books.google.com >>hosts
  echo 203.208.46.161 bks10.books.google.com >>hosts
  echo 203.208.46.161 bks2.books.google.com >>hosts
  echo 203.208.46.161 bks3.books.google.com >>hosts
  echo 203.208.46.161 bks4.books.google.com >>hosts
  echo 203.208.46.161 bks5.books.google.com >>hosts
  echo 203.208.46.161 bks6.books.google.com >>hosts
  echo 203.208.46.161 bks7.books.google.com >>hosts
  echo 203.208.46.161 bks8.books.google.com >>hosts
  echo 203.208.46.161 bks9.books.google.com >>hosts
  echo 203.208.46.161 blogsearch.google.com >>hosts
  echo 203.208.46.161 books.google.com >>hosts
  echo 203.208.46.161 browserchannel-docs.l.google.com >>hosts
  echo 203.208.46.161 browserchannel-spreadsheets.l.google.com >>hosts
  echo 203.208.46.161 browsersync.google.com >>hosts
  echo 203.208.46.161 browsersync.l.google.com >>hosts
  echo 203.208.46.161 buzz.google.com >>hosts
  echo 203.208.46.161 cache.l.google.com >>hosts
  echo 203.208.46.161 cache.pack.google.com >>hosts
  echo 203.208.46.161 calendar.google.com >>hosts
  echo 203.208.46.161 cbk0.google.com >>hosts
  echo 203.208.46.161 cbk1.google.com >>hosts
  echo 203.208.46.161 cbk2.google.com >>hosts
  echo 203.208.46.161 cbk3.google.com >>hosts
  echo 203.208.46.161 cbks0.google.com >>hosts
  echo 203.208.46.161 cbks1.google.com >>hosts
  echo 203.208.46.161 cbks2.google.com >>hosts
  echo 203.208.46.161 cbks3.google.com >>hosts
  echo 203.208.46.161 chart.apis.google.com >>hosts
  echo 203.208.46.161 chatenabled.mail.google.com >>hosts
  echo 203.208.46.161 checkout.google.com >>hosts
  echo 203.208.46.161 checkout.l.google.com >>hosts
  echo 203.208.46.161 chrome.google.com >>hosts
  echo 203.208.46.161 clients.l.google.com >>hosts
  echo 203.208.46.161 clients1.google.com >>hosts
  echo 203.208.46.161 clients2.google.com >>hosts
  echo 203.208.46.161 clients3.google.com >>hosts
  echo 203.208.46.161 clients4.google.com >>hosts
  echo 203.208.46.161 clients5.google.com >>hosts
  echo 203.208.46.161 clients6.google.com >>hosts
  echo 203.208.46.161 clients7.google.com >>hosts
  echo 203.208.46.161 code.google.com >>hosts
  echo 203.208.46.161 code.l.google.com >>hosts
  echo 203.208.46.161 csi.l.google.com >>hosts
  echo 203.208.46.161 desktop.google.com >>hosts
  echo 203.208.46.161 desktop.l.google.com >>hosts
  echo 203.208.46.161 desktop2.google.com >>hosts
  echo 203.208.46.161 developers.google.com >>hosts
  echo 203.208.46.161 ditu.google.com >>hosts
  echo 203.208.46.161 dl.google.com >>hosts
  echo 203.208.46.161 dl.l.google.com >>hosts
  echo 203.208.46.161 dl-ssl.google.com >>hosts
  echo 203.208.46.161 docs.google.com >>hosts
  echo 203.208.46.161 docs0.google.com >>hosts
  echo 203.208.46.161 docs1.google.com >>hosts
  echo 203.208.46.161 docs2.google.com >>hosts
  echo 203.208.46.161 docs3.google.com >>hosts
  echo 203.208.46.161 docs4.google.com >>hosts
  echo 203.208.46.161 docs5.google.com >>hosts
  echo 203.208.46.161 docs6.google.com >>hosts
  echo 203.208.46.161 docs7.google.com >>hosts
  echo 203.208.46.161 docs8.google.com >>hosts
  echo 203.208.46.161 docs9.google.com >>hosts
  echo 203.208.46.161 drive.google.com >>hosts
  echo 203.208.46.161 earth.google.com >>hosts
  echo 203.208.46.161 encrypted.google.com >>hosts
  echo 203.208.46.161 encrypted-tbn.l.google.com >>hosts
  echo 203.208.46.161 encrypted-tbn0.google.com >>hosts
  echo 203.208.46.161 encrypted-tbn1.google.com >>hosts
  echo 203.208.46.161 encrypted-tbn2.google.com >>hosts
  echo 203.208.46.161 encrypted-tbn3.google.com >>hosts
  echo 203.208.46.161 feedburner.google.com >>hosts
  echo 203.208.46.161 feedproxy.google.com >>hosts
  echo 203.208.46.161 filetransferenabled.mail.google.com >>hosts
  echo 203.208.46.161 finance.google.com >>hosts
  echo 203.208.46.161 fusion.google.com >>hosts
  echo 203.208.46.161 geoauth.google.com >>hosts
  echo 203.208.46.161 gg.google.com >>hosts
  echo 203.208.46.161 ghs.google.com >>hosts
  echo 203.208.46.161 ghs.l.google.com >>hosts
  echo 203.208.46.161 ghs46.google.com >>hosts
  echo 203.208.46.161 ghs46.l.google.com >>hosts
  echo 203.208.46.161 google.com >>hosts
  echo 203.208.46.161 googleapis.l.google.com >>hosts
  echo 203.208.46.161 googleapis-ajax.google.com >>hosts
  echo 203.208.46.161 googleapis-ajax.l.google.com >>hosts
  echo 203.208.46.161 googlecode.l.google.com >>hosts
  echo 203.208.46.161 google-public-dns-a.google.com >>hosts
  echo 203.208.46.161 google-public-dns-b.google.com >>hosts
  echo 203.208.46.161 goto.google.com >>hosts
  echo 203.208.46.161 groups.google.com >>hosts
  echo 203.208.46.161 groups.l.google.com >>hosts
  echo 203.208.46.161 groups-beta.google.com >>hosts
  echo 203.208.46.161 gxc.google.com >>hosts
  echo 203.208.46.161 id.google.com >>hosts
  echo 203.208.46.161 id.l.google.com >>hosts
  echo 203.208.46.161 images.google.com >>hosts
  echo 203.208.46.161 images.l.google.com >>hosts
  echo 203.208.46.161 investor.google.com >>hosts
  echo 203.208.46.161 jmt0.google.com >>hosts
  echo 203.208.46.161 kh.google.com >>hosts
  echo 203.208.46.161 kh.l.google.com >>hosts
  echo 203.208.46.161 khm.google.com >>hosts
  echo 203.208.46.161 khm.l.google.com >>hosts
  echo 203.208.46.161 khm0.google.com >>hosts
  echo 203.208.46.161 khm1.google.com >>hosts
  echo 203.208.46.161 khm2.google.com >>hosts
  echo 203.208.46.161 khm3.google.com >>hosts
  echo 203.208.46.161 khmdb.google.com >>hosts
  echo 203.208.46.161 khms.google.com >>hosts
  echo 203.208.46.161 khms.l.google.com >>hosts
  echo 203.208.46.161 khms0.google.com >>hosts
  echo 203.208.46.161 khms1.google.com >>hosts
  echo 203.208.46.161 khms2.google.com >>hosts
  echo 203.208.46.161 khms3.google.com >>hosts
  echo 203.208.46.161 labs.google.com >>hosts
  echo 203.208.46.161 large-uploads.l.google.com >>hosts
  echo 203.208.46.161 lh2.google.com >>hosts
  echo 203.208.46.161 lh2.l.google.com >>hosts
  echo 203.208.46.161 lh3.google.com >>hosts
  echo 203.208.46.161 lh4.google.com >>hosts
  echo 203.208.46.161 lh5.google.com >>hosts
  echo 203.208.46.161 lh6.google.com >>hosts
  echo 203.208.46.161 linkhelp.clients.google.com >>hosts
  echo 203.208.46.161 local.google.com >>hosts
  echo 203.208.46.161 m.google.com >>hosts
  echo 203.208.46.161 mail.google.com >>hosts
  echo 203.208.46.161 map.google.com >>hosts
  echo 203.208.46.161 maps.google.com >>hosts
  echo 203.208.46.161 maps.l.google.com >>hosts
  echo 203.208.46.161 maps-api-ssl.google.com >>hosts
  echo 203.208.46.161 mars.google.com >>hosts
  echo 203.208.46.161 mobile.l.google.com >>hosts
  echo 203.208.46.161 mobile-gtalk.l.google.com >>hosts
  echo 203.208.46.161 mobilemaps.clients.google.com >>hosts
  echo 203.208.46.161 mt.google.com >>hosts
  echo 203.208.46.161 mt.l.google.com >>hosts
  echo 203.208.46.161 mt0.google.com >>hosts
  echo 203.208.46.161 mt1.google.com >>hosts
  echo 203.208.46.161 mt2.google.com >>hosts
  echo 203.208.46.161 mt3.google.com >>hosts
  echo 203.208.46.161 mtalk.google.com >>hosts
  echo 203.208.46.161 mts.google.com >>hosts
  echo 203.208.46.161 mts.l.google.com >>hosts
  echo 203.208.46.161 mts0.google.com >>hosts
  echo 203.208.46.161 mts1.google.com >>hosts
  echo 203.208.46.161 mts2.google.com >>hosts
  echo 203.208.46.161 mts3.google.com >>hosts
  echo 203.208.46.161 music.google.com >>hosts
  echo 203.208.46.161 music-streaming.l.google.com >>hosts
  echo 203.208.46.161 mw1.google.com >>hosts
  echo 203.208.46.161 mw2.google.com >>hosts
  echo 203.208.46.161 news.google.com >>hosts
  echo 203.208.46.161 news.l.google.com >>hosts
  echo 203.208.46.161 pack.google.com >>hosts
  echo 203.208.46.161 photos.google.com >>hosts
  echo 203.208.46.161 photos-ugc.l.google.com >>hosts
  echo 203.208.46.161 picasa.google.com >>hosts
  echo 203.208.46.161 picasaweb.google.com >>hosts
  echo 203.208.46.161 picasaweb.l.google.com >>hosts
  echo 203.208.46.161 places.google.com >>hosts
  echo 203.208.46.161 play.google.com >>hosts
  echo 203.208.46.161 productforums.google.com >>hosts
  echo 203.208.46.161 profiles.google.com >>hosts
  echo 203.208.46.161 reader.google.com >>hosts
  echo 203.208.46.161 safebrowsing.cache.l.google.com >>hosts
  echo 203.208.46.161 safebrowsing.clients.google.com >>hosts
  echo 203.208.46.161 safebrowsing.google.com >>hosts
  echo 203.208.46.161 safebrowsing-cache.google.com >>hosts
  echo 203.208.46.161 sandbox.google.com >>hosts
  echo 203.208.46.161 sb.google.com >>hosts
  echo 203.208.46.161 sb.l.google.com >>hosts
  echo 203.208.46.161 sb-ssl.google.com >>hosts
  echo 203.208.46.161 sb-ssl.l.google.com >>hosts
  echo 203.208.46.161 scholar.google.com >>hosts
  echo 203.208.46.161 scholar.l.google.com >>hosts
  echo 203.208.46.161 script.google.com >>hosts
  echo 203.208.46.161 services.google.com >>hosts
  echo 203.208.46.161 sites.google.com >>hosts
  echo 203.208.46.161 sketchup.google.com >>hosts
  echo 203.208.46.161 sketchup.l.google.com >>hosts
  echo 203.208.46.161 spreadsheet.google.com >>hosts
  echo 203.208.46.161 spreadsheets.google.com >>hosts
  echo 203.208.46.161 spreadsheets.l.google.com >>hosts
  echo 203.208.46.161 spreadsheets0.google.com >>hosts
  echo 203.208.46.161 spreadsheets1.google.com >>hosts
  echo 203.208.46.161 spreadsheets2.google.com >>hosts
  echo 203.208.46.161 spreadsheets3.google.com >>hosts
  echo 203.208.46.161 spreadsheets4.google.com >>hosts
  echo 203.208.46.161 spreadsheets5.google.com >>hosts
  echo 203.208.46.161 spreadsheets6.google.com >>hosts
  echo 203.208.46.161 spreadsheets7.google.com >>hosts
  echo 203.208.46.161 spreadsheets8.google.com >>hosts
  echo 203.208.46.161 spreadsheets9.google.com >>hosts
  echo 203.208.46.161 spreadsheets-china.l.google.com >>hosts
  echo 203.208.46.161 suggestqueries.google.com >>hosts
  echo 203.208.46.161 suggestqueries.l.google.com >>hosts
  echo 203.208.46.161 support.google.com >>hosts
  echo 203.208.46.161 talkgadget.google.com >>hosts
  echo 203.208.46.161 tbn0.google.com >>hosts
  echo 203.208.46.161 tbn1.google.com >>hosts
  echo 203.208.46.161 tbn2.google.com >>hosts
  echo 203.208.46.161 tbn3.google.com >>hosts
  echo 203.208.46.161 toolbar.google.com >>hosts
  echo 203.208.46.161 toolbarqueries.clients.google.com >>hosts
  echo 203.208.46.161 toolbarqueries.google.com >>hosts
  echo 203.208.46.161 toolbarqueries.l.google.com >>hosts
  echo 203.208.46.161 tools.google.com >>hosts
  echo 203.208.46.161 tools.l.google.com >>hosts
  echo 203.208.46.161 translate.google.com >>hosts
  echo 203.208.46.161 trends.google.com >>hosts
  echo 203.208.46.161 upload.docs.google.com >>hosts
  echo 203.208.46.161 upload.drive.google.com >>hosts
  echo 203.208.46.161 uploads.code.google.com >>hosts
  echo 203.208.46.161 uploadsj.clients.google.com >>hosts
  echo 203.208.46.161 video.google.com >>hosts
  echo 203.208.46.161 video-stats.l.google.com >>hosts
  echo 203.208.46.161 voice.google.com >>hosts
  echo 203.208.46.161 wallet.google.com >>hosts
  echo 203.208.46.161 wifi.google.com >>hosts
  echo 203.208.46.161 wifi.l.google.com >>hosts
  echo 203.208.46.161 wire.l.google.com >>hosts
  echo 203.208.46.161 writely.google.com >>hosts
  echo 203.208.46.161 writely.l.google.com >>hosts
  echo 203.208.46.161 writely-china.l.google.com >>hosts
  echo 203.208.46.161 writely-com.l.google.com >>hosts
  echo 203.208.46.161 www.google.com >>hosts
  echo 203.208.46.161 www.l.google.com >>hosts
  echo 203.208.46.161 www2.l.google.com >>hosts
  echo 203.208.46.161 www3.l.google.com >>hosts
  echo 203.208.46.161 www4.l.google.com >>hosts
  echo 203.208.46.161 ytstatic.l.google.com >>hosts


  echo 203.208.46.170 0-open-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 0-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 1-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 1-open-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 1-ps.googleusercontent.com >>hosts
  echo 203.208.46.170 2-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 2-open-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 2-ps.googleusercontent.com >>hosts
  echo 203.208.46.170 3-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 3-ps.googleusercontent.com >>hosts
  echo 203.208.46.170 3hdrrlnlknhi77nrmsjnjr152ueo3soc-a-calendar-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 3-open-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 4-ps.googleusercontent.com >>hosts
  echo 203.208.46.170 4fjvqid3r3oq66t548clrdj52df15coc-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 53rd6p0catml6vat6qra84rs0del836d-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 59cbv4l9s05pbaks9v77vc3mengeqors-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 8kubpeu8314p2efdd7jlv09an9i2ljdo-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 adstvca8k2ooaknjjmv89j22n9t676ve-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 blogger.googleusercontent.com >>hosts
  echo 203.208.46.170 bt26mravu2qpe56n8gnmjnpv2inl84bf-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 clients1.googleusercontent.com >>hosts
  echo 203.208.46.170 clients2.googleusercontent.com >>hosts
  echo 203.208.46.170 clients3.googleusercontent.com >>hosts
  echo 203.208.46.170 clients4.googleusercontent.com >>hosts
  echo 203.208.46.170 clients5.googleusercontent.com >>hosts
  echo 203.208.46.170 clients6.googleusercontent.com >>hosts
  echo 203.208.46.170 clients7.googleusercontent.com >>hosts
  echo 203.208.46.170 code-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 debh8vg7vd93bco3prdajidmm7dhql3f-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-00-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-08-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-0c-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-0g-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-0s-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-10-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 doc-14-7o-docs.googleusercontent.com >>hosts
  echo 203.208.46.170 feedback.googleusercontent.com >>hosts
  echo 203.208.46.170 googlehosted.l.googleusercontent.com >>hosts
  echo 203.208.46.170 hsco54a20sh11q9jkmb51ad2n3hmkmrg-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 i8brh95qor6r54nkl52hidj2ggcs4jgm-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images1-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images2-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images3-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images4-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images5-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images6-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images7-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images8-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images9-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 images-docs-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 k6v18tjr24doa89b55o3na41kn4v73eb-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 lh1.googleusercontent.com >>hosts
  echo 203.208.46.170 lh2.googleusercontent.com >>hosts
  echo 203.208.46.170 lh3.googleusercontent.com >>hosts
  echo 203.208.46.170 lh4.googleusercontent.com >>hosts
  echo 203.208.46.170 lh5.googleusercontent.com >>hosts
  echo 203.208.46.170 lh6.googleusercontent.com >>hosts
  echo 203.208.46.170 mail-attachment.googleusercontent.com >>hosts
  echo 203.208.46.170 music.googleusercontent.com >>hosts
  echo 203.208.46.170 music-onebox.googleusercontent.com >>hosts
  echo 203.208.46.170 oauth.googleusercontent.com >>hosts
  echo 203.208.46.170 ob7f2qc0i50kbjnc81vkhgmb5hsv7a8l-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 ode25pfjgmvpquh3b1oqo31ti5ibg5fr-a-calendar.opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 qhie5b8u979rnch1q0hqbrmbkn9estf7-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 r70rmsn4s0rhk6cehcbbcbfbs31pu0va-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 rbjhe237k979f79d87gmenp3gejfonu9-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 s1.googleusercontent.com >>hosts
  echo 203.208.46.170 s2.googleusercontent.com >>hosts
  echo 203.208.46.170 s3.googleusercontent.com >>hosts
  echo 203.208.46.170 s4.googleusercontent.com >>hosts
  echo 203.208.46.170 s5.googleusercontent.com >>hosts
  echo 203.208.46.170 s6.googleusercontent.com >>hosts
  echo 203.208.46.170 spreadsheets-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 t.doc-0-0-sj.sj.googleusercontent.com >>hosts
  echo 203.208.46.170 themes.googleusercontent.com >>hosts
  echo 203.208.46.170 translate.googleusercontent.com >>hosts
  echo 203.208.46.170 u807isd5egseeabjccgcns005p2miucq-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 upt14k1i2veesusrda9nfotcrbp9d7p5-a-oz-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 webcache.googleusercontent.com >>hosts
  echo 203.208.46.170 www.googleusercontent.com >>hosts
  echo 203.208.46.170 www-calendar-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-fc-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-focus-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-gm-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-kix-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-open-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-opensocial.googleusercontent.com >>hosts
  echo 203.208.46.170 www-opensocial-sandbox.googleusercontent.com >>hosts
  echo 203.208.46.170 www-oz-opensocial.googleusercontent.com >>hosts


  echo 203.208.46.175 csi.gstatic.com >>hosts
  echo 203.208.46.175 g0.gstatic.com >>hosts
  echo 203.208.46.175 g1.gstatic.com >>hosts
  echo 203.208.46.175 g2.gstatic.com >>hosts
  echo 203.208.46.175 g3.gstatic.com >>hosts
  echo 203.208.46.175 maps.gstatic.com >>hosts
  echo 203.208.46.175 mt0.gstatic.com >>hosts
  echo 203.208.46.175 mt1.gstatic.com >>hosts
  echo 203.208.46.175 mt2.gstatic.com >>hosts
  echo 203.208.46.175 mt3.gstatic.com >>hosts
  echo 203.208.46.175 mt4.gstatic.com >>hosts
  echo 203.208.46.175 mt5.gstatic.com >>hosts
  echo 203.208.46.175 mt6.gstatic.com >>hosts
  echo 203.208.46.175 mt7.gstatic.com >>hosts
  echo 203.208.46.175 ssl.gstatic.com >>hosts
  echo 203.208.46.175 t0.gstatic.com >>hosts
  echo 203.208.46.175 t1.gstatic.com >>hosts
  echo 203.208.46.175 t2.gstatic.com >>hosts
  echo 203.208.46.175 t3.gstatic.com >>hosts
  echo 203.208.46.175 www.gstatic.com >>hosts


  echo 203.208.46.170 lh1.ggpht.com >>hosts
  echo 203.208.46.170 lh2.ggpht.com >>hosts
  echo 203.208.46.170 lh3.ggpht.com >>hosts
  echo 203.208.46.170 lh4.ggpht.com >>hosts
  echo 203.208.46.170 lh5.ggpht.com >>hosts
  echo 203.208.46.170 lh6.ggpht.com >>hosts
  echo 203.208.46.170 nt0.ggpht.com >>hosts
  echo 203.208.46.170 nt1.ggpht.com >>hosts
  echo 203.208.46.170 nt2.ggpht.com >>hosts
  echo 203.208.46.170 nt3.ggpht.com >>hosts
  echo 203.208.46.170 nt4.ggpht.com >>hosts
  echo 203.208.46.170 nt5.ggpht.com >>hosts


  echo 203.208.46.161 appspot.com >>hosts
  echo 173.194.64.141 chrometophone.appspot.com >>hosts
  echo 203.208.46.161 evolutionofweb.appspot.com >>hosts
  echo 203.208.46.161 googcloudlabs.appspot.com >>hosts
  echo 203.208.46.161 gv-gadget.appspot.com >>hosts
  echo 203.208.46.161 magnifier.blogspot.com >>hosts
  echo 203.208.46.161 moderator.appspot.com >>hosts
  echo 203.208.46.161 newsfeed-dot-latest-dot-rovio-ad-engine.appspot.com >>hosts
  echo 203.208.46.161 productideas.appspot.com >>hosts
  echo 203.208.46.161 project-slingshot-gp.appspot.com >>hosts
  echo 203.208.46.161 r2303.latest.project-slingshot-hr.appspot.com >>hosts
  echo 203.208.46.161 r3085-dot-latest-dot-project-slingshot-gp.appspot.com >>hosts
  echo 203.208.46.161 r3091-dot-latest-dot-project-slingshot-gp.appspot.com >>hosts
  echo 203.208.46.161 r3101-dot-latest-dot-project-slingshot-gp.appspot.com >>hosts
  echo 203.208.46.161 r3269-dot-latest-dot-project-slingshot-gp.appspot.com >>hosts
  echo 203.208.46.161 r3432-dot-latest-dot-project-slingshot-hr.appspot.com >>hosts
  echo 203.208.46.161 r4681-dot-latest-dot-project-slingshot-hr.appspot.com >>hosts
  echo 203.208.46.170 r7647-dot-latest-dot-project-slingshot-hr.appspot.com >>hosts
  echo 203.208.46.161 wcproxyx.appspot.com >>hosts
  echo 203.208.46.161 www.appspot.com >>hosts


  echo 203.208.46.161 ajax.googleapis.com >>hosts
  echo 203.208.46.161 chart.googleapis.com >>hosts
  echo 203.208.46.161 fonts.googleapis.com >>hosts
  echo 203.208.46.161 maps.googleapis.com >>hosts
  echo 203.208.46.161 mt0.googleapis.com >>hosts
  echo 203.208.46.161 mt1.googleapis.com >>hosts
  echo 203.208.46.161 mt2.googleapis.com >>hosts
  echo 203.208.46.161 mt3.googleapis.com >>hosts
  echo 203.208.46.161 redirector-bigcache.googleapis.com >>hosts
  echo 203.208.46.161 translate.googleapis.com >>hosts
  echo #203.208.46.161 www.googleapis.com >>hosts


  echo 203.208.46.161 autoproxy-gfwlist.googlecode.com >>hosts
  echo 203.208.46.161 chromium.googlecode.com >>hosts
  echo 203.208.46.161 closure-library.googlecode.com >>hosts
  echo 203.208.46.161 earth-api-samples.googlecode.com >>hosts
  echo 203.208.46.161 gmaps-samples-flash.googlecode.com >>hosts
  echo 203.208.46.161 google-code-feed-gadget.googlecode.com >>hosts


  echo 203.208.46.161 blogsearch.google.cn >>hosts
  echo 203.208.46.161 ditu.google.cn >>hosts
  echo 203.208.46.161 gg.google.cn >>hosts
  echo 203.208.46.161 id.google.cn >>hosts
  echo 203.208.46.161 maps.gstatic.cn >>hosts
  echo 203.208.46.161 m.google.cn >>hosts
  echo 203.208.46.161 mt.google.cn >>hosts
  echo 203.208.46.161 mt0.google.cn >>hosts
  echo 203.208.46.161 mt1.google.cn >>hosts
  echo 203.208.46.161 mt2.google.cn >>hosts
  echo 203.208.46.161 mt3.google.cn >>hosts
  echo 203.208.46.161 news.google.cn >>hosts
  echo 203.208.46.161 scholar.google.cn >>hosts
  echo 203.208.46.161 translate.google.cn >>hosts
  echo 203.208.46.161 www.google.cn >>hosts
  echo 203.208.46.161 www.gstatic.cn >>hosts


  echo 203.208.46.161 accounts.google.com.hk >>hosts
  echo 203.208.46.161 blogsearch.google.com.hk >>hosts
  echo 203.208.46.161 books.google.com.hk >>hosts
  echo 203.208.46.161 clients1.google.com.hk >>hosts
  echo 203.208.46.161 desktop.google.com.hk >>hosts
  echo 203.208.46.161 encrypted.google.com.hk >>hosts
  echo 203.208.46.161 groups.google.com.hk >>hosts
  echo 203.208.46.161 gxc.google.com.hk >>hosts
  echo 203.208.46.161 id.google.com.hk >>hosts
  echo 203.208.46.161 images.google.com.hk >>hosts
  echo 203.208.46.161 m.google.com.hk >>hosts
  echo 203.208.46.161 maps.google.com.hk >>hosts
  echo 203.208.46.161 news.google.com.hk >>hosts
  echo 203.208.46.161 picasaweb.google.com.hk >>hosts
  echo 203.208.46.161 plus.url.google.com.hk >>hosts
  echo 203.208.46.161 scholar.google.com.hk >>hosts
  echo 203.208.46.161 toolbar.google.com.hk >>hosts
  echo 203.208.46.161 toolbarqueries.google.com.hk >>hosts
  echo 203.208.46.161 translate.google.com.hk >>hosts
  echo 203.208.46.161 translate.google.com.hk >>hosts
  echo 203.208.46.161 wenda.google.com.hk >>hosts
  echo 203.208.46.161 www.google.com.hk >>hosts


  echo 203.208.46.161 android.googlesource.com >>hosts
  echo 203.208.46.161 auth.keyhole.com >>hosts
  echo 203.208.46.161 chrome.angrybirds.com >>hosts
  echo 203.208.46.161 chromium.org >>hosts
  echo 203.208.46.161 codereview.chromium.org >>hosts
  echo 203.208.46.161 dev.chromium.org >>hosts
  echo 203.208.46.161 developer.android.com >>hosts
  echo 203.208.46.161 developer.chrome.com >>hosts
  echo 203.208.46.161 domains.googlesyndication.com >>hosts
  echo 203.208.46.161 earthengine.googlelabs.com >>hosts
  echo 203.208.46.161 feeds.feedburner.com >>hosts
  echo 203.208.46.161 g.co >>hosts
  echo 203.208.46.161 gmail.com >>hosts
  echo 203.208.46.161 goo.gl >>hosts
  echo 203.208.46.162 listen.googlelabs.com >>hosts
  echo 203.208.46.161 m.gmail.com >>hosts
  echo 203.208.46.161 m.googlemail.com >>hosts
  echo 203.208.46.161 market.android.com >>hosts
  echo 203.208.46.163 ngrams.googlelabs.com >>hosts
  echo 203.208.46.222 ssl.google-analytics.com >>hosts
  echo 203.208.46.161 www.chromium.org >>hosts
  echo 203.208.46.161 www.gmail.com >>hosts
  echo 203.208.46.161 www.googleadservices.com >>hosts
  echo 203.208.46.222 www.google-analytics.com >>hosts
  echo 203.208.46.161 www.googlelabs.com >>hosts
  echo 203.208.46.222 www.googlesource.com >>hosts


  echo 203.208.45.206 plus.google.com >>hosts
  echo 203.208.45.206 plus.url.google.com >>hosts
  echo 203.208.45.206 plusone.google.com >>hosts
  echo #Google Services END >>hosts


  echo #Facebook Start >>hosts
  echo 69.171.225.13 api.facebook.com >>hosts
  echo 61.213.189.98 b.static.ak.facebook.com >>hosts
  echo 61.213.189.120 b.static.ak.fbcdn.net >>hosts
  echo 66.220.145.63 bigzipfiles.facebook.com >>hosts
  echo 61.213.189.113 creative.ak.fbcdn.net >>hosts
  echo 184.31.111.139 connect.facebook.net >>hosts
  echo 69.171.227.19 creativeupload.facebook.com >>hosts
  echo 69.171.240.99 d.facebook.com >>hosts
  echo 69.171.234.23 developers.facebook.com >>hosts
  echo 66.220.152.16 facebook.com >>hosts
  echo 61.213.189.113 fbcdn.net >>hosts
  echo 64.213.102.26 fbcdn-profile-a.akamaihd.net >>hosts
  echo 173.223.232.67 fbcdn-sphotos-a.akamaihd.net >>hosts
  echo 69.171.237.18 graph.facebook.com >>hosts
  echo 69.171.240.10 hphotos-ash4.fbcdn.net >>hosts
  echo 66.220.151.22 hphotos-snc6.fbcdn.net >>hosts
  echo 69.171.227.24 hphotos-snc7.fbcdn.net >>hosts
  echo 66.220.144.43 ldap.thefacebook.com >>hosts
  echo 118.214.190.105 profile.ak.facebook.com >>hosts
  echo 61.213.189.114 profile.ak.fbcdn.net >>hosts
  echo 69.171.247.22 s-static.facebook.com >>hosts
  echo 61.213.189.113 s-hprofile-sf2p.fbcdn.net >>hosts
  echo 184.26.194.110 s-static.ak.facebook.com >>hosts
  echo 23.5.157.177 s-static.ak.fbcdn.net >>hosts
  echo 69.63.189.76 star.facebook.com >>hosts
  echo 61.213.189.98 static.ak.facebook.com >>hosts
  echo 69.171.229.17 upload.facebook.com >>hosts
  echo 66.220.144.41 vpn.tfbnw.net >>hosts
  echo 120.29.145.50 vthumb.ak.fbcdn.net >>hosts
  echo 66.220.151.31 vupload.facebook.com >>hosts
  echo 69.171.225.31 www.connect.facebook.com >>hosts
  echo 69.171.234.21 www.facebook.com >>hosts
  echo 69.171.242.72 zh-CN.facebook.com >>hosts
  echo #Facebook End >>hosts


  echo #Dropbox START >>hosts
  echo 199.47.217.179 dropbox.com >>hosts
  echo 199.47.216.170 www.dropbox.com >>hosts
  echo #107.20.207.62 dl.dropbox.com >>hosts
  echo #107.20.207.62 dl-web.dropbox.com >>hosts
  echo #Dropbox END >>hosts


  echo #Flickr START >>hosts
  echo 66.94.233.186 flickr.com >>hosts
  echo 66.94.233.186 www.flickr.com >>hosts
  echo 68.142.214.43 static.flickr.com >>hosts
  echo 69.147.90.159 farm2.static.flickr.com >>hosts
  echo 76.13.18.78 farm3.static.flickr.com >>hosts
  echo 67.195.19.66 farm4.static.flickr.com >>hosts
  echo 76.13.18.79 farm5.static.flickr.com >>hosts
  echo 98.139.197.254 farm6.static.flickr.com >>hosts
  echo 98.139.102.46 farm7.static.flickr.com >>hosts
  echo 98.136.43.76 geo.yahoo.com >>hosts
  echo 68.142.250.161 l.yimg.com >>hosts
  echo 96.6.93.227 s.yimg.com >>hosts
  echo 98.137.88.88 d.yimg.com >>hosts
  echo 68.142.196.57 c5.ah.yahoo.com >>hosts
  echo 124.108.120.124 sa.edit.yahoo.com >>hosts
  echo 66.163.168.247 open.login.yahoo.com >>hosts
  echo 209.191.92.114 login.yahoo.com >>hosts
  echo 209.191.92.115 edit.yahoo.com >>hosts
  echo 209.191.121.31 up.flickr.com >>hosts
  echo 209.191.105.102 adjax.flickr.yahoo.com >>hosts
  echo 204.0.5.35 content.yieldmanager.edgesuite.net >>hosts
  echo 204.0.5.34 us.js2.yimg.com >>hosts


  echo #data from HostsX >>hosts
  echo 76.13.18.78 bf1.farm3.static.flickr.com >>hosts
  echo 76.13.18.78 farm3.static.flickr.com >>hosts
  echo 76.13.18.78 gq1.farm3.static.flickr.com >>hosts
  echo 76.13.18.78 sp1.farm3.static.flickr.com >>hosts
  echo 76.13.18.79 bf1.farm5.static.flickr.com >>hosts
  echo 76.13.18.79 farm5.static.flickr.com >>hosts
  echo 76.13.18.79 gq1.farm5.static.flickr.com >>hosts
  echo 98.139.102.46 bf1.farm7.static.flickr.com >>hosts
  echo 98.139.102.46 farm7.static.flickr.com >>hosts
  echo 98.139.102.46 gq1.farm7.static.flickr.com >>hosts
  echo 98.139.102.46 ne1.farm7.static.flickr.com >>hosts
  echo 98.139.197.254 bf1.farm6.static.flickr.com >>hosts
  echo 98.139.197.254 farm6.static.flickr.com >>hosts
  echo 98.139.197.254 gq1.farm6.static.flickr.com >>hosts
  echo #Flickr END >>hosts


  echo #Adobe Activation START >>hosts
  echo 0.0.0.0 3dns-2.adobe.com >>hosts
  echo 0.0.0.0 3dns-3.adobe.com >>hosts
  echo 0.0.0.0 activate.adobe.com >>hosts
  echo 0.0.0.0 activate-sea.adobe.com >>hosts
  echo 0.0.0.0 activate-sjc0.adobe.com >>hosts
  echo 0.0.0.0 adobe-dns.adobe.com >>hosts
  echo 0.0.0.0 adobe-dns-2.adobe.com >>hosts
  echo 0.0.0.0 adobe-dns-3.adobe.com >>hosts
  echo 0.0.0.0 ereg.adobe.com >>hosts
  echo 0.0.0.0 hl2rcv.adobe.com >>hosts
  echo 0.0.0.0 practivate.adobe.com >>hosts
  echo 0.0.0.0 wip3.adobe.com >>hosts
  echo 0.0.0.0 activate.wip3.adobe.com >>hosts
  echo 0.0.0.0 ereg.wip3.adobe.com >>hosts
  echo 0.0.0.0 wwis-dubc1-vip60.adobe.com >>hosts
  echo #Adobe Activation END >>hosts


  echo #Wikipedia START >>hosts
  echo 208.80.152.201 wikipedia.org >>hosts
  echo 208.80.152.201 www.wikipedia.org >>hosts
  echo 208.80.152.201 bits.wikipedia.org >>hosts
  echo 208.80.152.201 en.wikipedia.org >>hosts
  echo 208.80.152.201 zh.wikipedia.org >>hosts
  echo 208.80.152.201 simple.wikipedia.org >>hosts
  echo 208.80.152.201 wikibooks.org >>hosts
  echo 208.80.152.201 www.wikibooks.org >>hosts
  echo 208.80.152.201 en.wikibooks.org >>hosts
  echo 208.80.152.201 zh.wikibooks.org >>hosts
  echo 208.80.152.201 wikinews.org >>hosts
  echo 208.80.152.201 www.wikinews.org >>hosts
  echo 208.80.152.201 en.wikinews.org >>hosts
  echo 208.80.152.201 zh.wikinews.org >>hosts
  echo 208.80.152.201 wikiquote.org >>hosts
  echo 208.80.152.201 www.wikiquote.org >>hosts
  echo 208.80.152.201 en.wikiquote.org >>hosts
  echo 208.80.152.201 zh.wikiquote.org >>hosts
  echo 208.80.152.201 zh.wikisource.org >>hosts
  echo 208.80.152.201 en.wikisource.org >>hosts
  echo 208.80.152.201 wiktionary.org >>hosts
  echo 208.80.152.201 www.wiktionary.org >>hosts
  echo 208.80.152.201 en.wiktionary.org >>hosts
  echo 208.80.152.201 zh.wiktionary.org >>hosts
  echo 208.80.152.201 wikimedia.org >>hosts
  echo 208.80.152.201 www.wikimedia.org >>hosts
  echo 208.80.152.201 bugs.wikimedia.org >>hosts
  echo 208.80.152.201 bugzilla.wikimedia.org >>hosts
  echo 208.80.152.201 commons.wikimedia.org >>hosts
  echo 208.80.152.201 dumps.wikimedia.org >>hosts
  echo 208.80.152.201 download.wikimedia.org >>hosts
  echo 208.80.152.201 irc.wikimedia.org >>hosts
  echo 208.80.152.201 ftp.wikimedia.org >>hosts
  echo 208.80.152.201 ganglia.wikimedia.org >>hosts
  echo 208.80.152.201 mail.wikimedia.org >>hosts
  echo 208.80.152.201 meta.wikimedia.org >>hosts
  echo 208.80.152.201 news.wikimedia.org >>hosts
  echo 208.80.152.201 noc.wikimedia.org >>hosts
  echo 208.80.152.201 kate.wikimedia.org >>hosts
  echo 208.80.152.201 kohl.wikimedia.org >>hosts
  echo 208.80.152.201 stats.wikimedia.org >>hosts
  echo 208.80.152.201 ticket.wikimedia.org >>hosts
  echo 208.80.152.201 tools.wikimedia.org >>hosts
  echo 208.80.152.211 upload.wikimedia.org >>hosts
  echo 208.80.152.201 wikimediafoundation.org >>hosts
  echo 208.80.152.201 www.wikimediafoundation.org >>hosts
  echo 208.80.152.201 mediawiki.org >>hosts
  echo 208.80.152.201 www.mediawiki.org >>hosts
  echo #Wikipedia END >>hosts


  echo #YouTube START >>hosts
  echo 203.208.45.206 apiblog.youtube.com >>hosts
  echo 203.208.45.206 help.youtube.com >>hosts
  echo 203.208.45.206 i.ytimg.com >>hosts
  echo 203.208.45.206 i1.ytimg.com >>hosts
  echo 203.208.45.206 i2.ytimg.com >>hosts
  echo 203.208.45.206 i3.ytimg.com >>hosts
  echo 203.208.45.206 i4.ytimg.com >>hosts
  echo 203.208.45.206 insight.youtube.com >>hosts
  echo 203.208.45.206 m.youtube.com >>hosts
  echo 203.208.45.206 s.ytimg.com >>hosts
  echo 203.208.45.206 ytimg.l.google.com >>hosts
  echo #YouTube END >>hosts


  echo #SmartHosts END >>hosts
)
