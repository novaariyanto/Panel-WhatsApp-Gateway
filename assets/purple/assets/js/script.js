
    var url = window.location.href;
    console.log('develop by whatsva.com')
    if(url.includes("/device/authqr/")){
        var urla = window.location.pathname;
        var arr = urla.split('/')
        console.log(arr[4])

        console.log("change qr")
        var timeleft = 15;
        var downloadTimer = setInterval(function(){
        timeleft--;
        document.getElementById("countdowntimer").textContent = timeleft;
        if(timeleft <= 0)
            clearInterval(downloadTimer);
            if(timeleft < 1){
                window.location.reload();
            }
        },1000);
        
        setInterval(() => {
            console.log("change qr")
         

            $.ajax({
                url: url + "./../../../device/detail/"+arr[5],
                type: "get",
                dataType: 'json',
                success: function (hasil) {
                  // console.log(hasil)
                  // Put the object into storage
                  if (hasil.success) {
                    if(hasil.data.instance_status === "connected"){
                        window.location.href = "./../../device"
                    }
                    $('#qrcode').html("")
                    $('#qrcode').qrcode({width: 200,height: 200,text: hasil.data.qrCode});
                  } else {
                    alert(hasil.message)
                  }
                }
              })
        }, 2000);


    }
   
