
    var url = window.location.href;
    console.log('develop by whatsva.com')
    if(url.includes("/device/authqr/")){
        var urla = window.location.pathname;
        var arr = urla.split('/')
        console.log(arr[4])
        var id_device = $("#id_device").val()

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
                url: url + "./../../../api/device/detail/"+id_device,
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
        }, 3000);


    }
    else if(url.includes("/messageOut/add")){
   
        console.log('hello')
        function getFormData($form){
          var unindexed_array = $form.serializeArray();
          var indexed_array = {};
      
          $.map(unindexed_array, function(n, i){
              indexed_array[n['name']] = n['value'];
          });
          console.log(indexed_array)
          return indexed_array;
      }

        $("form").submit(function () {
          $.ajax({
            url: $(this).attr("action"),
            data: JSON.stringify(getFormData($(this))),
            type: $(this).attr("method"),
            processData: true,
            dataType: 'application/json; charset=UTF-8',
            beforeSend: function () {
              $("button").attr("disabled", true);
            },
            complete: function (data) {
              var response = JSON.parse(data.responseText);
              alert(response.message)
              if(response.success){
                window.location.href = "./../messageOut";
              }
            
            
              $("button").attr("disabled", false);
            }
          })
          return false;
        });
    
  
  
    }
   
    function handleClick(url,instance_key,multidevice) {
     
      $.ajax({
        
        url: url,
        data: {
          instance_key : instance_key,
          multidevice : multidevice
        },
        type: "post",
        dataType: 'json',
       success : function (results) {
         alert(results.message)
         location.reload()
       }
      })
    }