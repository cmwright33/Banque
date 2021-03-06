// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



var AccountApp = {
  accountsArray: [],
  showAccounts: function(){
     $.ajax({
        type: 'get',
        url: '/',
        dataType: 'json'
      }).done(function(data){
        console.log(data);
        AccountApp.accountsArray = data;
        AccountApp.appendAccount();
      });
    },

  appendAccount: function(){
    for(var i = 0; i < AccountApp.accountsArray.length; i ++){
      $('#accounts').append($('<ul></ul>')).append($('<li id='+AccountApp.accountsArray[i].id+'>Account: ' + AccountApp.accountsArray[i].name + ', balance: ' + AccountApp.accountsArray[i].total + '</li>'));}
      },


      showDeposit: function(){
        console.log('click');
        $.ajax({
        url: '/deposit',
        type: 'get',
        dataType: 'script'
        });
    },

      showWithdraw: function(){
        console.log('click');
        $.ajax({
          url: '/withdraw',
          type: 'get',
          dataType: 'script'
        });
      },

      showNew: function(){
        console.log('click');
        $.ajax({
          url: '/new',
          type: 'get',
          dataType: 'script'
        });
      },

      showAccount: function(){
        console.log('click');
        $.ajax({
          url: '/show',
          type: 'get',
          dataType: 'script'
        });
      },

      withdrawAmount: function(){


      },


      addDepositAmount: function(){
      $('.depositAmountButton').click(function(){
        event.preventDefault();
        console.log('click');
        var account = $('#accountName').val();
        var amount = $('#depositAmount').val();
        $.ajax({
          url: '/deposit/' + account,
          type: 'post',
          dataType: 'json'
        });
      });
    }


};


$(function () {
$('#deposit').click(AccountApp.showDeposit);
$('#withdraw-transfer').click(AccountApp.showWithdraw);
$('#new').click(AccountApp.showNew);
  AccountApp.showAccounts();


});