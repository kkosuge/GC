window.___jsl=window.___jsl||{};
window.___jsl.h=window.___jsl.h||'r;gc\/24479126-6666cb8c';
window.___jsl.l=[];
window.___gpq=[];
window.gapi=window.gapi||{};
window.gapi.plusone=window.gapi.plusone||(function(){
  function f(n){return function(){window.___gpq.push(n,arguments)}}
  return{go:f('go'),render:f('render')}})();
function __bsld(){var p=window.gapi.plusone=window.googleapisv0.plusone;var f;while(f=window.___gpq.shift()){
  p[f]&&p[f].apply(p,window.___gpq.shift())}
}
window['___jsl'] = window['___jsl'] || {};window['___jsl']['u'] = 'https:\/\/apis.google.com\/js\/plusone.js';window['___jsl']['f'] = ['plusone-unsupported'];window['___jsl']['ms'] = 'https://plus.google.com';(window['___jsl']['ci'] = (window['___jsl']['ci'] || [])).push({});var gapi=window.gapi||{};
(function(){var r=void 0,n=void 0,w="___jsl",I="h",s="l",J="m",x="ms",y="cu",z="c",K="o",L="p",t="https://ssl.gstatic.com",M="/webclient/js",N="/webclient/jsx/",A="https://apis.google.com",B=".js",O="gcjs-3p",P=/^(https?:)?\/\/([^/:@]*)(:[0-9]+)?(\/(\w|[-.,:!=/])*)(\?[^#]*)?(#.*)?$/,C=/^[?#]([^&]*&)*jsh=([^&]*)/,D="d",p="r",Q="f",u="m",R="n",S="sync",T="callback",E="config",F="nodep",q="gapi.load: ",v=function(f,c){r&&r(f,c);throw q+f+(c&&" "+c);},G=function(f){n&&n(f);var c=window.console;(c=c&&
c.warn)&&c(q+f)},H=function(f){f.sort();for(var c=0;c<f.length;)!f[c]||c&&f[c]==f[c-1]?f.splice(c,1):++c},U=function(f){if(document.readyState!="loading")return false;if(typeof window.___gapisync!="undefined")return window.___gapisync;if(f&&(f=f[S],typeof f!="undefined"))return f;for(var f=document.getElementsByTagName("meta"),c=0,j;j=f[c];++c)if("generator"==j.getAttribute("name")&&"blogger"==j.getAttribute("content"))return true;return false},V=function(f,c){var j,k={};typeof c!=="function"?(k=
c||{},j=k[T]):j=c;var m=window[w]=window[w]||{},o=f.split(":");k[F]||H(o);var a=m[s]=m[s]||[];H(a);var d,e=window.location.search,g=window.location.hash;d=m[I];if(e=e&&C.exec(e)||g&&C.exec(g))try{d=decodeURIComponent(e[2])}catch(r){G("Invalid hint "+e[2])}d||v("No hint present","");for(var b,e=true,h=g=0,l;e&&(b=o[g])&&(l=a[h]);)b==l?++g:b<l&&(e=false),++h;b=e&&!b;if(!b){b=d.split(";");a:{d=o;e=a;h=b;a=m;g=k;b=h.shift();l=b==p?t:b==u?a[x]||A:(l=h.shift())&&l.replace(/\/+$/,"");var i;b==p?(i=h.shift(),
i=(i.indexOf(N)?M+"/":"")+i):i=h.shift();var n=b==D,q=n&&h.shift()||O,h=n&&h.shift();if(b==D)g=i,i=q,d="/"+d.join(":")+(e.length?"!"+e.join(":"):"")+B+"?container="+i+"&c=2&jsload=0",g&&(d+="&r="+g),h=="d"&&(d+="&debug=1");else if(b==p||b==Q)g=i,d=(g.indexOf("/")?"/":"")+g+"/"+d.join("__")+(e.length?"--"+e.join("__"):"")+B;else if(b==u||b==R)e=i,d=d.join(",").replace(/\./g,"_").replace(/-/g,"_"),d=e.replace("__features__",d),d=g[F]?d.replace("/d=1/","/d=0/"):d;else{G("Unknown hint type "+b);a="";
break a}if(l){l+=d;d=l;e=a;a=P.exec(d);if(!(g=!a))if(!(g=!!/\.\.|\/\//.test(a[4]))){b:if(g=d,a=a[2],b==p)a=g.substr(0,t.length)==t;else if(b==u)a=e[x]||A,a=g.substr(0,a.length)==a;else{b=e[J];if(a&&b){b=b.split(",");e=0;for(g=b.length;e<g;++e)if(h=b[e],i=a.lastIndexOf(h),(i==0||h.charAt(0)=="."||a.charAt(i-1)==".")&&a.length-h.length==i){a=true;break b}}a=false}g=!a}g&&v("Invalid URI",d);a=l}else a=""}k[E]&&(m[y]=m[y]||[]).push(k[E]);if(a){j&&(m[z]?v("Pending callback",a):(m[L]=o,m[z]=j,m[K]=1));
[].push.apply(m[s],o);U(k)?document.write('<script src="'+a+'"><\/script>'):(k=a,j=document.createElement("script"),j.setAttribute("src",k),k=document.getElementsByTagName("script")[0],k.parentNode.insertBefore(j,k));return}}j&&j.call(null)};gapi.loader={load:V}})();
gapi.load=gapi.loader.load;
(window.gapi=window.gapi||{}).load=gapi.load;
gapi.load('plusone-unsupported', {'callback': window['__bsld']  });