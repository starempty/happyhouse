(function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32"
  });
//Boot Channel as an anonymous user
  ChannelService.boot({
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32" //please fill with your plugin key
  });

  // Boot Channel as a registered user
  ChannelService.boot({
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32", //please fill with your plugin key
    "profile": {
      "name": ${loginuser.uName}, //fill with user name
      "mobileNumber": ${loginuser.phoneNum}, //fill with user phone number
      "id": ${loginuser.id}, //any other custom meta data
      "CUSTOM_VALUE_2": "VALUE_2"
    }
  });

  // Shutdown Channel
  ChannelService.shutdown();