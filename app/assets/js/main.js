// Initialize your app
var myApp = new Framework7({
  modalTitle: 'Film App',

  // pushState: true,
  modalButtonOk: 'Tamam',
  modalButtonCancel: 'İptal',
  modalPreloaderTitle: 'Yükleniyor..',
  smartSelectBackText: 'Geri',
  smartSelectSearchbar: true,

  onAjaxStart: function (xhr) {
    myApp.showIndicator();
  },

  onAjaxComplete: function (xhr) {
    myApp.hideIndicator();
  },
});

var $$ = Dom7;

var baseUrl = window.location.origin + '/filmapp/';

/*
  --- VIEWS ---
*/

var view1 = myApp.addView('#anasayfa', {
  dynamicNavbar: true,
  domCache: true,
});

$(document).ready(function () { // Sayfa yüklenmesini tamamladığında

  $('#puan-ver-btn').on('click', function (event) { // Form buttonuna basıldığında

    event.preventDefault(); // İşlemleri durdur

    var $button = $(this);

    var formData = $('.ekle-form').serialize(); // Formdan verileri çek

    var buttonText = $button.text(); // Buttondaki texti al

    // Formdan aldığım verileri ajax ile gönder.
    $.ajax({
      type: 'POST', // Post kullanacağım
      url: baseUrl, // İsteği nereye göndereceğim
      data: formData, // data ne?
      beforeSend: function (data) { // Göndermeden önce bir şey yapacak mıyım?

        $button.html('<i class="fa fa-spinner fa-pulse"></i>');

      },

      complete: function (data) { // İstek tamamlandığında ne olacak?

        setTimeout(function () {
          $button.html(buttonText);

          myApp.alert('Puanınız kaydedildi.', 'Harika!');
          myApp.closeModal('.ekle-popup');

          $('.load-me').load(baseUrl + ' .load-me ul');

        }, 1000);
      },
    });

  });

});
