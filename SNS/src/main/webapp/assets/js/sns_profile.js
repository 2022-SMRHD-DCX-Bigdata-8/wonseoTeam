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

  function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#imagePreview').css('background-image', 'url('+e.target.result +')');
            $('#imagePreview').hide();
            $('#imagePreview').fadeIn(650);
        }
        reader.readAsDataURL(input.files[0]);
    }
  }
  $("#imageUpload").change(function() {
    readURL(this);
  });


  var songsToAdd = [
    {
      "name": "Terrain",
      "artist": "pg.lost",
      "album": "Key",
      "url": "https://521dimensions.com/songs/Terrain-pglost.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/key.jpg"
    },
    {
      "name": "Vorel",
      "artist": "Russian Circles",
      "album": "Guidance",
      "url": "https://521dimensions.com/songs/Vorel-RussianCircles.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/guidance.jpg"
    },
    {
      "name": "Intro / Sweet Glory",
      "artist": "Jimkata",
      "album": "Die Digital",
      "url": "https://521dimensions.com/songs/IntroSweetGlory-Jimkata.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/die-digital.jpg"
    },
    {
      "name": "Offcut #6",
      "artist": "Little People",
      "album": "We Are But Hunks of Wood Remixes",
      "url": "https://521dimensions.com/songs/Offcut6-LittlePeople.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-but-hunks-of-wood.jpg"
    },
    {
      "name": "Dusk To Dawn",
      "artist": "Emancipator",
      "album": "Dusk To Dawn",
      "url": "https://521dimensions.com/songs/DuskToDawn-Emancipator.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/from-dusk-to-dawn.jpg"
    },
    {
      "name": "Anthem",
      "artist": "Emancipator",
      "album": "Soon It Will Be Cold Enough",
      "url": "https://521dimensions.com/songs/Anthem-Emancipator.mp3",
      "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/soon-it-will-be-cold-enough.jpg"
    }
  ];
  
  Amplitude.init({
    "songs": [
      {
        "name": "Risin' High (feat Raashan Ahmad)",
        "artist": "Ancient Astronauts",
        "album": "We Are to Answer",
        "url": "https://521dimensions.com/songs/Ancient Astronauts - Risin' High (feat Raashan Ahmad).mp3",
        "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-to-answer.jpg"
      },
      {
        "name": "The Gun",
        "artist": "Lorn",
        "album": "Ask The Dust",
        "url": "https://521dimensions.com/songs/08 The Gun.mp3",
        "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/ask-the-dust.jpg"
      },
      {
        "name": "Anvil",
        "artist": "Lorn",
        "album": "Anvil",
        "url": "https://521dimensions.com/songs/LORN - ANVIL.mp3",
        "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/anvil.jpg"
      },
      {
        "name": "I Came Running",
        "artist": "Ancient Astronauts",
        "album": "We Are to Answer",
        "url": "https://521dimensions.com/songs/ICameRunning-AncientAstronauts.mp3",
        "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/we-are-to-answer.jpg"
      },
      {
        "name": "First Snow",
        "artist": "Emancipator",
        "album": "Soon It Will Be Cold Enough",
        "url": "https://521dimensions.com/songs/FirstSnow-Emancipator.mp3",
        "cover_art_url": "https://521dimensions.com/img/open-source/amplitudejs/album-art/soon-it-will-be-cold-enough.jpg"
      }
    ]
  });
  
  
  /*
    Shows the playlist
  */
  document.getElementsByClassName('show-playlist')[0].addEventListener('click', function(){
    document.getElementById('white-player-playlist-container').classList.remove('slide-out-top');
    document.getElementById('white-player-playlist-container').classList.add('slide-in-top');
    document.getElementById('white-player-playlist-container').style.display = "block";
  });
  
  /*
    Hides the playlist
  */
  document.getElementsByClassName('close-playlist')[0].addEventListener('click', function(){
    document.getElementById('white-player-playlist-container').classList.remove('slide-in-top');
    document.getElementById('white-player-playlist-container').classList.add('slide-out-top');
    document.getElementById('white-player-playlist-container').style.display = "none";
  });
  
  /*
    Gets all of the add to playlist buttons so we can
    add some event listeners to actually add to playlist.
  */
  var addToPlaylistButtons = document.getElementsByClassName('add-to-playlist-button');
  
  for( var i = 0; i < addToPlaylistButtons.length; i++ ){
    /*
      Add an event listener to the add to playlist button.
    */
    addToPlaylistButtons[i].addEventListener('click', function(){
      var songToAddIndex = this.getAttribute('song-to-add');
  
      /*
        Adds the song to Amplitude, appends the song to the display,
        then rebinds all of the AmplitudeJS elements.
      */
      var newIndex = Amplitude.addSong( songsToAdd[ songToAddIndex ] );
      appendToSongDisplay( songsToAdd[ songToAddIndex ], newIndex );
      Amplitude.bindNewElements();
  
      /*
        Removes the container that contained the add to playlist button.
      */
      var songToAddRemove = document.querySelector('.song-to-add[song-to-add="'+songToAddIndex+'"]');
      songToAddRemove.parentNode.removeChild( songToAddRemove );
    });
  }
  
  /*
    Appends the song to the display.
  */
  function appendToSongDisplay( song, index ){
    /*
      Grabs the playlist element we will be appending to.
    */
    var playlistElement = document.querySelector('.white-player-playlist');
  
    /*
      Creates the playlist song element
    */
    var playlistSong = document.createElement('div');
    playlistSong.setAttribute('class', 'white-player-playlist-song amplitude-song-container amplitude-play-pause');
    playlistSong.setAttribute('data-amplitude-song-index', index);
  
    /*
      Creates the playlist song image element
    */
    var playlistSongImg = document.createElement('img');
    playlistSongImg.setAttribute('src', song.cover_art_url);
  
    /*
      Creates the playlist song meta element
    */
    var playlistSongMeta = document.createElement('div');
    playlistSongMeta.setAttribute('class', 'playlist-song-meta');
  
    /*
      Creates the playlist song name element
    */
    var playlistSongName = document.createElement('span');
    playlistSongName.setAttribute('class', 'playlist-song-name');
    playlistSongName.innerHTML = song.name;
  
    /*
      Creates the playlist song artist album element
    */
    var playlistSongArtistAlbum = document.createElement('span');
    playlistSongArtistAlbum.setAttribute('class', 'playlist-song-artist');
    playlistSongArtistAlbum.innerHTML = song.artist+' &bull; '+song.album;
  
    /*
      Appends the name and artist album to the playlist song meta.
    */
    playlistSongMeta.appendChild( playlistSongName );
    playlistSongMeta.appendChild( playlistSongArtistAlbum );
  
    /*
      Appends the song image and meta to the song element
    */
    playlistSong.appendChild( playlistSongImg );
    playlistSong.appendChild( playlistSongMeta );
  
    /*
      Appends the song element to the playlist
    */
    playlistElement.appendChild( playlistSong );
  }
  
numberElements = 4;
numberViewed = 4;
currentPosition = 1;

function countLi() {
    return jQuery("#galleries-list ul li").length;
};



function initWidths() {
    jQuery("#galleries-list ul li").css('width', (100 / countLi()) + '%');
    jQuery("#galleries-list ul").css('width', (100 + (countLi() - numberViewed) * (100 / numberViewed)) + '%');
};

function initClones() {
    if (countLi() >= numberViewed) {
        for (i = 1; i < numberViewed + 1; i++) {
            jQuery("#galleries-list ul li:nth-child(" + i + ")").clone().insertAfter("#galleries-list ul li:last-child");
        }
        c = countLi();
        for (i = c - numberViewed + 1; i <= c; i++) {
            console.log(i);
            jQuery("#galleries-list ul li:nth-last-child(" + i + ")").clone().insertBefore("#galleries-list ul li:first-child");
        }
    }
};

function initSlider() {
    initClones();
    initResponsive();
    initWidths();
};

function initPosition() {
    setSliderPosition(currentPosition, countLi());
};

function initResponsive() {
    if (jQuery(window).width() > 1000) {
        if (numberViewed != 4) {
            numberViewed = 4;
            initWidths();
        }
    } else if (jQuery(window).width() > 800) {
        if (numberViewed != 3) {
            numberViewed = 3;
            initWidths();
        }
    } else if (jQuery(window).width() > 600) {
        if (numberViewed != 2) {
            numberViewed = 2;
            initWidths();
        }
    } else if (numberViewed != 1) {
        numberViewed = 1;
        initWidths();
    };
    initPosition();
};


