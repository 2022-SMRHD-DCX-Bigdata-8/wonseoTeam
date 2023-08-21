<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns_profile.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
   rel="stylesheet">
</head>
<body>
   <script src="assets/js/sns_profile.js"></script>

   <div id="knu-container">

      <!-- Header -->
      <div id="knu-header">

         <img class="titleimg"src="C:\Users\smhrd\Desktop\JSP\nonol\src\main\webapp\assets\img\로고3.png">

      </div>

      <!-- 메뉴 바 -->
      <div id="knu-sidebar1">
         <br>
         <div class="menu">
            <label for="expand-menu"></label> <input type="checkbox"
               id="expand-menu" name="expand-menu">
            <ul>
               <li><a href="goMain.do" class="item"></a></li>
               <li><a href="goSearch.do" class="item"></a></li>
               <li><a href="goProfile.do" class="item"></a></li>
               <li><a href="goWrite.do" class="item"></a></li>
               <li><a href="goPlaylist.do" class="item"></a></li>
               <li><a href="goMessage.do" class="item"></a></li>
               <li><a href="logout.do" onclick="return logout_confirm()"
                  class="item"></a></li>
            </ul>
         </div>
      </div>

      <!-- content -->
      <div id="knu-content">
         <div class="container">

            <!-- 프사 업로드 칸 -->
            <div class="avatar-upload">
               <div class="avatar-edit">
                  <input type='file' id="imageUpload" name="changeImg"
                     accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
               </div>

               <!-- 프사 이미지 -->
               <div class="avatar-id">
                  <!-- 프사 기본 이미지로 일단 해뒀음 -->
                  <div id="imagePreview"
                     style="background-image: url(save/${sessionUser.userPhoto });">
                  </div>
                  <h1>${sessionUser.userId }</h1>
                  <hr>
                  <h1>
                     <small style="visibility: hidden;">user tag</small>
                  </h1>
               </div>
               <br>
            </div>
            <br>

            <!-- 버튼은 숨겨둠 -->
            <div class="profile-userbuttons">
               <button style="visibility: hidden;" type="button"
                  class="btn btn-success btn-sm">Follow</button>
               <button style="visibility: hidden;" type="button"
                  class="btn btn-danger btn-sm">Message</button>
            </div>
            <br>

            <!-- 가운데 게시물이랑 뜨는 공간 -->
            <div class="portlet light bordered">
               <div class="row list-separated profile-stat">
                  <div style="border: 1px; float: left; width: 33%;"
                     class="col-md-4 col-sm-4 col-xs-6">
                     <div style="visibility: hidden;"
                        class="uppercase profile-stat-title">37</div>
                     <div style="visibility: hidden;"
                        class="uppercase profile-stat-text">Projects</div>
                  </div>
                  <div style="border: 1px; float: left; width: 33%;"
                     class="col-md-4 col-sm-4 col-xs-6">
                     <!-- 팔로워수 나오게 하는 부분 id가 중요 -->
                     <div class="uppercase profile-stat-title" id="followerCount">
                        51</div>
                     <div class="uppercase profile-stat-text">followers</div>
                  </div>
                  <div style="border: 1px; float: left; width: 33%;"
                     class="col-md-4 col-sm-4 col-xs-6">
                     <div style="visibility: hidden;"
                        class="uppercase profile-stat-title">61</div>
                     <div style="visibility: hidden;"
                        class="uppercase profile-stat-text">Uploads</div>
                  </div>
                  <div style="border: 1px; float: left; width: 50%;">
                     <h2 align="center">Title Music</h2>
                  </div>
                  <div style="border: 1px; float: left; width: 0%;">
                     <h2></h2>
                  </div>
                  <div style="border: 1px; float: left; width: 50%;">
                     <h2 align="center">Music List</h2>
                  </div>
               </div>

               <div class="example-container"></div>
               <div class="left">
                  <div id="white-player">
                     <div class="white-player-top">
                        <div>&nbsp;</div>
                     </div>

                     <div id="white-player-center">
                        <img data-amplitude-song-info="cover_art_url"
                           class="main-album-art" />

                        <div class="song-meta-data">
                           <span data-amplitude-song-info="name" class="song-name"></span>
                           <span data-amplitude-song-info="artist" class="song-artist"></span>
                        </div>

                        <div class="time-progress">
                           <div id="progress-container">
                              <input type="range" class="amplitude-song-slider" />
                              <progress id="song-played-progress"
                                 class="amplitude-song-played-progress"></progress>
                              <progress id="song-buffered-progress"
                                 class="amplitude-buffered-progress" value="0"></progress>
                           </div>

                           <div class="time-container">
                              <span class="current-time"> <span
                                 class="amplitude-current-minutes"></span>:<span
                                 class="amplitude-current-seconds"></span>
                              </span> <span class="duration"> <span
                                 class="amplitude-duration-minutes"></span>:<span
                                 class="amplitude-duration-seconds"></span>
                              </span>
                           </div>
                        </div>
                     </div>

                     <div id="white-player-controls">
                        <div class="amplitude-shuffle amplitude-shuffle-off"
                           id="shuffle"></div>
                        <div class="amplitude-prev" id="previous"></div>
                        <div class="amplitude-play-pause" id="play-pause"></div>
                        <div class="amplitude-next" id="next"></div>
                        <div class="amplitude-repeat" id="repeat"></div>
                     </div>

                     <div id="white-player-playlist-container">
                        <div class="white-player-playlist-top">
                           <div></div>
                           <div>
                              <span class="queue">Queue</span>
                           </div>
                           <div>
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/examples/dynamic-songs/close.svg"
                                 class="close-playlist" />
                           </div>
                        </div>

                        <div class="white-player-up-next">Up Next</div>

                        <div class="white-player-playlist">
                           <div
                              class="white-player-playlist-song amplitude-song-container amplitude-play-pause"
                              data-amplitude-song-index="0">
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-to-answer.jpg" />

                              <div class="playlist-song-meta">
                                 <span class="playlist-song-name">Risin' High (feat
                                    Raashan Ahmad)</span> <span class="playlist-artist-album">Ancient
                                    Astronauts &bull; We Are to Answer</span>
                              </div>
                           </div>
                           <div
                              class="white-player-playlist-song amplitude-song-container amplitude-play-pause"
                              data-amplitude-song-index="1">
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/album-art/ask-the-dust.jpg" />

                              <div class="playlist-song-meta">
                                 <span class="playlist-song-name">The Gun</span> <span
                                    class="playlist-artist-album">Lorn &bull; Ask The
                                    Dust</span>
                              </div>
                           </div>
                           <div
                              class="white-player-playlist-song amplitude-song-container amplitude-play-pause"
                              data-amplitude-song-index="2">
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/album-art/anvil.jpg" />

                              <div class="playlist-song-meta">
                                 <span class="playlist-song-name">The Gun</span> <span
                                    class="playlist-artist-album">Lorn &bull; Anvil</span>
                              </div>
                           </div>
                           <div
                              class="white-player-playlist-song amplitude-song-container amplitude-play-pause"
                              data-amplitude-song-index="3">
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-to-answer.jpg" />

                              <div class="playlist-song-meta">
                                 <span class="playlist-song-name">I Came Running</span> <span
                                    class="playlist-artist-album">Ancient Astronauts
                                    &bull; We Are to Answer</span>
                              </div>
                           </div>
                           <div
                              class="white-player-playlist-song amplitude-song-container amplitude-play-pause"
                              data-amplitude-song-index="4">
                              <img
                                 src="https://521dimensions.com/img/open-source/amplitudejs/album-art/soon-it-will-be-cold-enough.jpg" />

                              <div class="playlist-song-meta">
                                 <span class="playlist-song-name">First Snow</span> <span
                                    class="playlist-artist-album">Emancipator &bull; Soon
                                    It Will Be Cold Enough</span>
                              </div>
                           </div>
                        </div>

                        <div class="white-player-playlist-controls">
                           <img data-amplitude-song-info="cover_art_url"
                              class="playlist-album-art" />

                           <div class="playlist-controls">
                              <div class="playlist-meta-data">
                                 <span data-amplitude-song-info="name" class="song-name"></span>
                                 <span data-amplitude-song-info="artist" class="song-artist"></span>
                              </div>

                              <div class="playlist-control-wrapper">
                                 <div class="amplitude-prev" id="playlist-previous"></div>
                                 <div class="amplitude-play-pause" id="playlist-play-pause"></div>
                                 <div class="amplitude-next" id="playlist-next"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <br>
            <h2 align="center">musiclist</h2>
            <br>
            <div id="list_box">
               <ul id="photo_list">
                  <li><a href=""><img src="save/머엉맹구.PNG" alt="photo1"></a></li>
                  <li><a href=""><img src="img/img//2.png" alt="photo2"></a></li>
                  <li><a href=""><img src="img/img//3.png" alt="photo3"></a></li>
                  <li><a href=""><img src="img/img//4.PNG" alt="photo4"></a></li>
                  <li><a href=""><img src="img/img//5.jpg" alt="photo5"></a></li>
                  <li><a href=""><img src="img/img//6.jpg" alt="photo6"></a></li>
                  <li><a href=""><img src="img/img//7.jpg" alt="photo7"></a></li>
                  <li><a href=""><img src="img/img//8.jpg" alt="photo8"></a></li>
                  <li><a href=""><img src="img/img//9.jpg" alt="photo9"></a></li>
                  <li><a href=""><img src="img/img//10.jpg" alt="photo10"></a></li>
                  <li><a href=""><img src="img/img//11.jpg" alt="photo11"></a></li>
                  <li><a href=""><img src="img/img//12.jpg" alt="photo12"></a></li>
                  <li><a href=""><img src="img/img//13.jpg" alt="photo13"></a></li>
               </ul>
            </div>
            <div id="list_button">
               <div>
                  <button name="next_button" onclick="getData()"></button>
                  <img src="img/Logo/fornt.png" alt="사진 앞으로">
               </div>
               <div>
                  <button name="next_button" onclick="getData()"></button>
                  <img src="img/Logo/back.png" alt="사진 앞으로">
               </div>
            </div>

         </div>
      </div>
   </div>


   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

   <!-- 팔로워수 세는 js -->
   <script type="text/javascript">
      $(document).ready(function(){
         $.ajax({
            type : 'get',
            url : 'count.do',
            data : {
               "id" : ${sessionUser.userId}
            },
            success : function(res){
               let fCount = $('#followerCount');
               fCount.html('');
               fCount.append(res);
            },
            error : function(e){
               console.log("실패");
            }
         });
      })
      </script>

   <script type="text/javascript">
      $(document).ready(function () {
             var front_btn = $("#list_button >:first-child");
             var back_btn = $("#list_button >:last-child");

             front_btn.on("click", function (e) {
               $("#photo_list").animate({ "left": "+=675px" })
             })
             back_btn.on("click", function (e) {
               $("#photo_list").animate({ "left": "-=675px" })
             })
           });
      </script>

   <script type="text/javascript">
      $(document).ready(function(){
         var changeImg = $("")
      })
   </script>

   <script type="text/javascript">
      $(document).ready(function(){
         $.ajax({
            type : 'get',
            url : 'loadMusic.do',
            data : {
               "id" : ${sessionUser.userId}
            },
            dataType : 'json',
            success : function(res){
               let photo_list = $('#photo_list');
               photo_list.html('');
               j = 1;
               for (let i = 0;i <res.length;i++){
                  tr = "<li>";
                  tr += "<a href=\"goViewMusic.do?titlex="
                     + res[i].musicTitle+"\">";
                  tr += "<img src=\"save/"+ res[i].musicPhoto   + "\" alt=\"photo"+j+"\" onerror=\"this.src='https://mblogthumb-phinf.pstatic.net/MjAxOTA1MDFfMTk5/MDAxNTU2Njg0Njc2MDY3.874mdI9L0xUogVhSIQDyJreothUGGf2lMEZZfGmSiO0g.LxwELVh6mgsBxmOSMdl5_MTgzOYQLRzCoc2NC7q1jb0g.JPEG.strifeopfi/1556637710459.jpg?type=w800'\">";
                  tr += "</a></li>";
                  j++;
                  console.log(j);
               photo_list.append(tr);
               }
            },
            error : function(e){
               console.log('요청실패');
            }
         });
      })
   </script>

   <script type="text/javascript">
      function logout_confirm() {
         if (confirm("로그아웃하시겠습니까?")) {
            return true;
         } else {
            return false;
         }
      }
   </script>






</body>
</html>