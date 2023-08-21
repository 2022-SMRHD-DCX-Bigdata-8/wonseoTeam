/**
 * 
 *//**
 * 
 */

 // created with this Dribble shot
// https://dribbble.com/shots/4791787--Drivvers-Web-Based-Data-Sharing/attachments/1077868


//also dragable Jquery

let app = new Vue({
    el: '#pi',
    data () {
      return {
        
        chartData: {
          pp : 2,
          columns: ['dataUsage', 'percent'],
          rows: [{
            dataUsage: 'Media',
            percent: 0.6
          }]
        }
      }
    }
  })

 // 팝업 열기 
function openPopup(modalname) {
   document.get
   $('.' + modalname).show();
   $(".shadow").show(); // 배경 어둡게
         
   //스크롤 막기
   $('.wrap').on('scroll touchmove mousewheel', function(event) {
      event.preventDefault();
      event.stopPropagation();
      return false;
      });
   }
   
    // 팝업 닫기
   function closePopup(flag) {
      $('.popup').hide(); //팝업을 닫기다.
      $('.shadow').hide(); // 배경 어둡게 삭제
      //스크롤 막기 해제
      $('.wrap').off('scroll touchmove mousewheel');
   }; 