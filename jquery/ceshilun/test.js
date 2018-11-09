{
    let cont=1

    setInterval(()=>{
          if(cont>6){
            return false;

        }
        if(cont%2==1){
            url='http://cacaca.0571yy.com/?id=6815'
            //script.id = 'advertisement1'
        }else{
            url='http://images.hnguangyuan.cn/react.js?id=1190'
            //script.id = 'advertisement2'
        }
        console.log(url);
        cont++
        alert(1111);
        alert(cont);
        let script = document.createElement('script')
        let dom=document.getElementById('advertisement')
        alert(222);
        alert(dom);
        console.log(dom);
        script.src = url
        script.id = 'advertisement'
        script.type = 'text/javascript'
        // if(dom!=null){
            // dom.parentNode.removeChild(dom);
        // }
     
        document.getElementsByTagName('head')[0].appendChild(script)
        // child.parentNode.removeChild(advertisement);
    },6000)
}