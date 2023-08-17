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
</head>
<body>
	<script src="assets/js/sns_profile.js"></script>
	<!-- Container -->
	<div id="knu-container">

		<!-- Header -->
		<div id="knu-header">

			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAyMThfMjkg%2FMDAxNjc2NzI3MzExMzAy.umwnYxkbm5OLxYcw13diqjPlGpHmiju6v9dkzo68UHEg.3tWz4JSUwnJvByueURREKM5Q99Y1M56yT2006UM1cTEg.PNG.slalomman%2F%25C0%25CE%25BD%25BA%25C5%25B8.PNG&type=sc960_832"
				alt="">

		</div>
		<!-- Sidebar left -->
		<div id="knu-sidebar1">
			<br>
			<div class="menu">
				<label for="expand-menu"></label> <input type="checkbox"
					id="expand-menu" name="expand-menu">
				<ul>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
					<li><a href="#" class="item"></a></li>
				</ul>
			</div>

		</div>




		<!-- Content -->
		<div id="knu-content">

			<div class="container">
				<div class="avatar-upload">
					<div class="avatar-edit">
						<input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
						<label for="imageUpload"></label>
					</div>
					<div class="avatar-id">
						<div id="imagePreview"
							style="background-image: url(http://i.pravatar.cc/500?img=7);">
						</div>
						<h1>
							user id
							<hr>
							<small>user tag</small>
						</h1>
					</div>
					<br>
				</div>
				<br>

				<div class="profile-userbuttons">
					<button style="visibility: hidden;" type="button" class="btn btn-success btn-sm">Follow</button>
					<button style="visibility: hidden;" type="button" class="btn btn-danger btn-sm">Message</button>
				</div>
				<br>

				<div class="portlet light bordered">
					<!-- STAT -->
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
							<div class="uppercase profile-stat-title" id="followerCount">
								51</div>
							<div class="uppercase profile-stat-text">follower</div>
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

					<head>
<title>AmplitudeJS Testing</title>

<!-- Include font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">


<!-- Include Style Sheet -->
<link rel="stylesheet" type="text/css" href="css/app.css" />
					</head>

					<body>
						<div class="example-container">
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
														class="playlist-artist-album">Emancipator &bull;
														Soon It Will Be Cold Enough</span>
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
							<div class="right">
								<div class="song-to-add" song-to-add="0">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/key.jpg" />

									<a class="add-to-playlist-button" song-to-add="0"> Add To
										Playlist </a>
								</div>

								<div class="song-to-add" song-to-add="1">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/guidance.jpg" />

									<a class="add-to-playlist-button" song-to-add="1"> Add To
										Playlist </a>
								</div>

								<div class="song-to-add" song-to-add="2">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/die-digital.jpg" />

									<a class="add-to-playlist-button" song-to-add="2"> Add To
										Playlist </a>
								</div>

								<div class="song-to-add" song-to-add="3">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-but-hunks-of-wood.jpg" />

									<a class="add-to-playlist-button" song-to-add="3"> Add To
										Playlist </a>
								</div>

								<div class="song-to-add" song-to-add="4">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/from-dusk-to-dawn.jpg" />

									<a class="add-to-playlist-button" song-to-add="4"> Add To
										Playlist </a>
								</div>

								<div class="song-to-add" song-to-add="5">
									<img
										src="https://521dimensions.com/img/open-source/amplitudejs/album-art/soon-it-will-be-cold-enough.jpg" />

									<a class="add-to-playlist-button" song-to-add="5"> Add To
										Playlist </a>
								</div>
							</div>
						</div>
						<br>
						<h2 align="center">musiclist</h2>
						<br>
						<div id="list_box">
							<ul id="photo_list">
								<li><a href=""><img src="img/img/1.webp" alt="photo1"></a></li>
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
								<button name="next_button" onclick="getData()">
									<img src="img/Logo/fornt.png" alt="사진 앞으로"></a>
							</div>
							<div>
								<button name="next_button" onclick="getData()">
									<img src="img/Logo/back.png" alt="사진 앞으로"></a>
							</div>
						</div>



					</body>


					<!-- Footer -->
					<div id="knu-footer">
						<br> <a href="#0" class="c-link c-link--facebook c-tooltip"
							aria-label="Facebook"> <svg class="c-icon">
                <use xlink:href="#icon--facebook"></use>
              </svg>
						</a> <a href="#0" class="c-link c-link--twitter c-tooltip"
							aria-label="Twitter"> <svg class="c-icon">
                <use xlink:href="#icon--twitter"></use>
              </svg>
						</a> <a href="#0" class="c-link c-link--google c-tooltip"
							aria-label="Google+"> <svg class="c-icon">
                <use xlink:href="#icon--google"></use>
              </svg>
						</a> <a href="#0" class="c-link c-link--instagram c-tooltip"
							aria-label="Instagram"> <svg class="c-icon">
                <use xlink:href="#icon--instagram"></use>
              </svg>
						</a>

						<svg style="display: none">
              <symbol id="icon--facebook" viewBox="0 0 24 24">
                <path
								d="M19,4V7H17A1,1 0 0,0 16,8V10H19V13H16V20H13V13H11V10H13V7.5C13,5.56 14.57,4 16.5,4M20,2H4A2,2 0 0,0 2,4V20A2,2 0 0,0 4,22H20A2,2 0 0,0 22,20V4C22,2.89 21.1,2 20,2Z" />
              </symbol>
              <symbol id="icon--twitter" viewBox="0 0 24 24">
                <path
								d="M17.71,9.33C17.64,13.95 14.69,17.11 10.28,17.31C8.46,17.39 7.15,16.81 6,16.08C7.34,16.29 9,15.76 9.9,15C8.58,14.86 7.81,14.19 7.44,13.12C7.82,13.18 8.22,13.16 8.58,13.09C7.39,12.69 6.54,11.95 6.5,10.41C6.83,10.57 7.18,10.71 7.64,10.74C6.75,10.23 6.1,8.38 6.85,7.16C8.17,8.61 9.76,9.79 12.37,9.95C11.71,7.15 15.42,5.63 16.97,7.5C17.63,7.38 18.16,7.14 18.68,6.86C18.47,7.5 18.06,7.97 17.56,8.33C18.1,8.26 18.59,8.13 19,7.92C18.75,8.45 18.19,8.93 17.71,9.33M20,2H4A2,2 0 0,0 2,4V20A2,2 0 0,0 4,22H20A2,2 0 0,0 22,20V4C22,2.89 21.1,2 20,2Z" />
              </symbol>
              <symbol id="icon--google" viewBox="0 0 24 24">
                <path
								d="M23,11H21V9H19V11H17V13H19V15H21V13H23M8,11V13.4H12C11.8,14.4 10.8,16.4 8,16.4C5.6,16.4 3.7,14.4 3.7,12C3.7,9.6 5.6,7.6 8,7.6C9.4,7.6 10.3,8.2 10.8,8.7L12.7,6.9C11.5,5.7 9.9,5 8,5C4.1,5 1,8.1 1,12C1,15.9 4.1,19 8,19C12,19 14.7,16.2 14.7,12.2C14.7,11.7 14.7,11.4 14.6,11H8Z" />
              </symbol>
              <symbol id="icon--pinterest" viewBox="0 0 24 24">
                <path
								d="M13,16.2C12.2,16.2 11.43,15.86 10.88,15.28L9.93,18.5L9.86,18.69L9.83,18.67C9.64,19 9.29,19.2 8.9,19.2C8.29,19.2 7.8,18.71 7.8,18.1C7.8,18.05 7.81,18 7.81,17.95H7.8L7.85,17.77L9.7,12.21C9.7,12.21 9.5,11.59 9.5,10.73C9.5,9 10.42,8.5 11.16,8.5C11.91,8.5 12.58,8.76 12.58,9.81C12.58,11.15 11.69,11.84 11.69,12.81C11.69,13.55 12.29,14.16 13.03,14.16C15.37,14.16 16.2,12.4 16.2,10.75C16.2,8.57 14.32,6.8 12,6.8C9.68,6.8 7.8,8.57 7.8,10.75C7.8,11.42 8,12.09 8.34,12.68C8.43,12.84 8.5,13 8.5,13.2A1,1 0 0,1 7.5,14.2C7.13,14.2 6.79,14 6.62,13.7C6.08,12.81 5.8,11.79 5.8,10.75C5.8,7.47 8.58,4.8 12,4.8C15.42,4.8 18.2,7.47 18.2,10.75C18.2,13.37 16.57,16.2 13,16.2M20,2H4C2.89,2 2,2.89 2,4V20A2,2 0 0,0 4,22H20A2,2 0 0,0 22,20V4C22,2.89 21.1,2 20,2Z" />
              </symbol>
              <symbol id="icon--instagram" viewBox="0 0 24 24">
                <path
								d="M7.8,2H16.2C19.4,2 22,4.6 22,7.8V16.2A5.8,5.8 0 0,1 16.2,22H7.8C4.6,22 2,19.4 2,16.2V7.8A5.8,5.8 0 0,1 7.8,2M7.6,4A3.6,3.6 0 0,0 4,7.6V16.4C4,18.39 5.61,20 7.6,20H16.4A3.6,3.6 0 0,0 20,16.4V7.6C20,5.61 18.39,4 16.4,4H7.6M17.25,5.5A1.25,1.25 0 0,1 18.5,6.75A1.25,1.25 0 0,1 17.25,8A1.25,1.25 0 0,1 16,6.75A1.25,1.25 0 0,1 17.25,5.5M12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9Z" />
              </symbol>
              <symbol id="icon--snapchat" viewBox="0 0 24 24">
                <path
								d="M12,20.45C10.81,20.45 10.1,19.94 9.47,19.5C9,19.18 8.58,18.87 8.08,18.79C6.93,18.73 6.59,18.79 5.97,18.9C5.86,18.9 5.73,18.87 5.68,18.69C5.5,17.94 5.45,17.73 5.32,17.71C4,17.5 3.19,17.2 3.03,16.83C3,16.6 3.07,16.5 3.18,16.5C4.25,16.31 5.2,15.75 6,14.81C6.63,14.09 6.93,13.39 6.96,13.32C7.12,13 7.15,12.72 7.06,12.5C6.89,12.09 6.31,11.91 5.68,11.7C5.34,11.57 4.79,11.29 4.86,10.9C4.92,10.62 5.29,10.42 5.81,10.46C6.16,10.62 6.46,10.7 6.73,10.7C7.06,10.7 7.21,10.58 7.25,10.54C7.14,8.78 7.05,7.25 7.44,6.38C8.61,3.76 11.08,3.55 12,3.55C12.92,3.55 15.39,3.76 16.56,6.38C16.95,7.25 16.86,8.78 16.75,10.54C16.79,10.58 16.94,10.7 17.27,10.7C17.54,10.7 17.84,10.62 18.19,10.46C18.71,10.42 19.08,10.62 19.14,10.9C19.21,11.29 18.66,11.57 18.32,11.7C17.69,11.91 17.11,12.09 16.94,12.5C16.85,12.72 16.88,13 17.04,13.32C17.07,13.39 17.37,14.09 18,14.81C18.8,15.75 19.75,16.31 20.82,16.5C20.93,16.5 21,16.6 20.97,16.83C20.81,17.2 20,17.5 18.68,17.71C18.55,17.73 18.5,17.94 18.32,18.69C18.27,18.87 18.14,18.9 18.03,18.9C17.41,18.79 17.07,18.73 15.92,18.79C15.42,18.87 15,19.18 14.53,19.5C13.9,19.94 13.19,20.45 12,20.45Z" />
              </symbol>
            </svg>

					</div>
				</div>

			</div>
			<script src="assets/js/code.jquery.com_jquery-3.7.0.min.js"></script>
			<script src="profile.js"></script>
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
</body>
</html>