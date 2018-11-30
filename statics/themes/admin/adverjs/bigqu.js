//
//
// window.onload = function(){
//     var randomNum = Math.round(Math.random() * 2);
//     var json = {"0":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190","1":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190","2":"3http:\/\/images.hnguangyuan.cn\/react.js?id=1190"};
//
//     alert(json[1]);
//     // function getNthFromObject(data, nth) {
//     //     if (data == null) return null;
//     //     let n = 0;
//     //     alert(data[0]);
//     //   console.log(data[1]);
//     //     for (let k in data) {
//     //         if (data.hasOwnProperty(k) && n == nth) {
//     //             alert(data[k]);
//     //             return data[k];
//     //         }
//     //         n++;
//     //     }
//     //     return null;
//     // }
//     //
//     // alert(getNthFromObject(json, randomNum));
//     // console.log(getNthFromObject(json, randomNum)); // 300cm
//
//
//     // if(randomNum==0){
//     //     alert(2222222);
//     //     url = 'http://images.hnguangyuan.cn/react.js?id=1190';
//     // }else{
//     //     alert(333333);
//     //     url = 'http://images.hnguangyuan.cn/react.js?id=1190';
//     // }
//
//     var  url = json[1];
//     // url = 'http://images.hnguangyuan.cn/react.js?id=1190';
//     let script = document.createElement('script');
//     script.src = url
//     script.id = 'adver'
//     script.type = 'text/javascript'
//     document.getElementsByTagName('head')[0].appendChild(script);
//
//
// };
window.onload = function(){
    var  aaa = 3;
    var json = {"0":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190","1":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190","2":"http:\/\/images.hnguangyuan.cn\/react.js?id=1190"};
    var randomNum = Math.round(Math.random() * 3);
    alert(randomNum);
    var  url = json[randomNum];
    let script = document.createElement('script');
    script.src = url
    script.id = 'adver'
    script.type = 'text/javascript'
    document.getElementsByTagName('head')[0].appendChild(script);
};
// url = 'http://images.hnguangyuan.cn/react.js?id=1190';

