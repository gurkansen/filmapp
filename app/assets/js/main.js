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

var baseUrl = window.location.origin + '/filmapp';

/*
  --- VIEWS ---
*/

var view1 = myApp.addView('#anasayfa', {
  dynamicNavbar: true,
  domCache: true,
});
