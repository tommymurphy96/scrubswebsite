var app = angular.module('myApp', []);

app.controller('appCtrl', function($scope, $http, $timeout) {
    $scope.goToPage = function(page) {
        $scope.destPage = page;
        $scope.transitioning = true;
        // Delay the page change to let animations run
        $timeout(function() {
            $scope.transitioning = false;
            $scope.templateUrl = page;
            setPageImage(page);
            window.scrollTo(0, 0);
            if(page == 'page-login') {
                // Re-initialize the map when loading the login page
                // Delay ensures that the page loads before reloading the map
                $timeout(function() {
                    initMap();
                }, 400);
            }
        }, 300);
        
    }
    
    function postMessage(message, targetTemplate) {
        $scope.message = message;
        $scope.templateUrl = 'page-message';
        window.scrollTo(0, 0);
        $timeout(function() {
            $scope.goToPage(targetTemplate);
        }, 2000);
    }
    
    function setPageImage(pageTitle) {
        for(var i = 0; i < pageImages.length; i++) {
            if(pageImages[i].title == pageTitle) {
                $scope.imgSource = pageImages[i].link;
                $scope.imgHeight = pageImages[i].height;
                $scope.imgWidth = pageImages[i].width;
                break;
            }
        }
    }
    
    var pageImages = [
    {title:'page-home', height:'0px', width:'0px',
    link:''},
    {title:'page-login', height:'0px', width:'0px',
    link:''},
    {title:'page-songs', height:'200px', width:'200px',
    link:'http://images.clipartpanda.com/clipart-music-notes-zxTg75XiA.png'},
    {title:'page-guitarists', height:'220px', width:'480px',
    link:'http://www.schecterguitars.com/international/images/stories/virtuemart/product/blackjack-sls-c-7-stbb-a-dots-tilt.png'},
    {title:'page-bands', height:'230px', width:'320px',
    link:'http://www.musicianinsurance.ie/wp-content/uploads/2014/08/bands_quotation_small.png'}];
    
    // ------------------------------------
    // -------- Login section -------------
    
    function validateLogin() {
        if($scope.user.name.length < 1) {
            $scope.loginMessage = "Please enter a username";
            return false;
        }
        if($scope.user.password.length < 1) {
            $scope.loginMessage = "Please enter a password";
            return false;
        }
        return true;
    }
    
    $scope.login = function() {
        if(validateLogin() == false) {
            return;
        }
        var hashedpassword = b64_sha256($scope.user.name + $scope.user.password);
        var j = {"username":$scope.user.name,
                "password":hashedpassword};
        $timeout(function() {
            // Clear the password in a moment so the insecure data is gone
            // Clearing immediately causes unpleasant transitions
            $scope.user.password = "";
        }, 2000);
        $http.post("api/api.php/login/", j)
        .then(function(response) {
            if(response.data.status == "login_success") {
                $scope.loginMessage = "Login successful!";
                $scope.loggedIn = true;
                $scope.goToPage('page-home');
            } else {
                $scope.loginMessage = "Incorrect username or password";
            }
        });
    }
    
    $scope.newLogin = function() {
        if(validateLogin() == false) {
            return;
        }
        var hashedpassword = b64_sha256($scope.user.name + $scope.user.password);
        var j = {"username":$scope.user.name,
                "password":hashedpassword};
        $http.put("api/api.php/login/", j)
        .then(function(response) {
            if(response.data.status == "user_created") {
                $scope.loginMessage = "User created!";
            } else {
                $scope.loginMessage = "Failed to create user";
            }
        });
    }
    
    $scope.logout = function() {
        $scope.loggedIn = false;
        $scope.user.password = "";
        $scope.loginMessage = "Logout successful";
        $scope.goToPage('page-login');
    }
    
    
    // ---------------------------------------------------
    // ---------------- Song section ---------------------
    $scope.req_songID = 0;
    
    function resetSong() {
        $scope.songSelected = false;
        $scope.song = {"title":"",
                    "artist":"",
                    "tuning":"",
                    "length":0};
    }
   
    function refreshSongs() {
        $http.get("api/api.php/songs")
        .then(function(response) {
            $scope.allSongs = response.data;
        });
    }
    
    $scope.setSongID = function(id) {
        $scope.req_songID = id;
        
        $http.get("api/api.php/songs/" + id)
        .then(function(response) {
            $scope.songSelected = true;
            $scope.song = response.data;
            $scope.song.length = parseInt($scope.song.length);
        });
    }
    
    $scope.postNewSong = function() {
        var j = {"title":$scope.song.title,
                "artist":$scope.song.artist,
                "tuning":$scope.song.tuning,
                "length":$scope.song.length};
        $http.post("api/api.php/songs/", j)
        .then(function(response) {
            $scope.songSelected = true;
            $scope.song = response.data;
            $scope.song.length = parseInt($scope.song.length);
            refreshSongs();
            postMessage("Entry added!", 'page-songs');
        });
    }
    
    $scope.deleteSong = function(id) {
        if($scope.songSelected == true){
            $http.delete("api/api.php/songs/" + id)
            .then(function(response) {
                resetSong();
                refreshSongs();
                postMessage("Entry deleted!", 'page-songs');
            });
        }
    }
    
    $scope.updateSong = function(id) {
        var j = {"title":$scope.song.title,
                "artist":$scope.song.artist,
                "tuning":$scope.song.tuning,
                "length":$scope.song.length};
        if($scope.songSelected == true){
            $http.put("api/api.php/songs/" + id, j)
            .then(function(response) {
                refreshSongs();
                postMessage("Entry updated!", 'page-songs');
            });
        }
    }
    
    // ---------------------------------------------------
    // ---------------- Guitarist section ----------------
    $scope.req_guitaristID = 0;
    
    function resetGuitarist() {
        $scope.guitarist_songtitle = null;
        $scope.guitaristSelected = false;
        $scope.guitarist = {"name":"",
                        "guitar":"",
                        "favourite_song_id":0,
                        "experience":0};
    }
    
    function refreshGuitarists() {
        $http.get("api/api.php/guitarists")
        .then(function(response) {
            $scope.allGuitarists = response.data;
        });
    }
    
    $scope.guitaristSongChanged = function() {
        $http.get("api/api.php/songs/" + $scope.guitarist.favourite_song_id)
        .then(function(response) {
            $scope.guitarist_songtitle = response.data.title;
        });
    }
    
    $scope.setGuitaristID = function(id) {
        $scope.req_guitaristID = id;
        
        $http.get("api/api.php/guitarists/" + id)
        .then(function(response) {
            $scope.guitaristSelected = true;
            $scope.guitarist = response.data;
            $scope.guitarist.favourite_song_id = parseInt($scope.guitarist.favourite_song_id);
            $scope.guitarist.experience = parseInt($scope.guitarist.experience);
            $scope.guitaristSongChanged();
        });
    }
    
    $scope.postNewGuitarist = function() {
        var j = {"name":$scope.guitarist.name,
                "guitar":$scope.guitarist.guitar,
                "favourite_song_id":$scope.guitarist.favourite_song_id,
                "experience":$scope.guitarist.experience};
        $http.post("api/api.php/guitarists/", j)
        .then(function(response) {
            $scope.guitaristSelected = true;
            $scope.guitarist = response.data;
            $scope.guitarist.favourite_song_id = parseInt($scope.guitarist.favourite_song_id);
            $scope.guitarist.experience = parseInt($scope.guitarist.experience);
            refreshGuitarists();
            postMessage("Entry added!", 'page-guitarists');
        });
    }
    
    $scope.deleteGuitarist = function(id) {
        if($scope.guitaristSelected == true){
            $http.delete("api/api.php/guitarists/" + id)
            .then(function(response) {
                resetGuitarist();
                refreshGuitarists();
                postMessage("Entry deleted!", 'page-guitarists');
            });
        }
    }
    
    $scope.updateGuitarist = function(id) {
        var j = {"name":$scope.guitarist.name,
                "guitar":$scope.guitarist.guitar,
                "favourite_song_id":$scope.guitarist.favourite_song_id,
                "experience":$scope.guitarist.experience};
        if($scope.guitaristSelected == true){
            $http.put("api/api.php/guitarists/" + id, j)
            .then(function(response) {
                refreshGuitarists();
                postMessage("Entry updated!", 'page-guitarists');
            });
        }
    }
    
    
    
    
    // ---------------------------------------------------
    // ---------------- Band section ---------------------
    $scope.req_bandID = 0;
    
    function resetBand() {
        $scope.band_guitaristname = null;
        $scope.bandSelected = false;
        $scope.band = {"name":"",
                        "location":"",
                        "guitarist_id":0};
    }
    
    function refreshBands() {
        $http.get("api/api.php/bands")
        .then(function(response) {
            $scope.allBands = response.data;
        });
    }
    
    $scope.bandGuitaristChanged = function() {
        $http.get("api/api.php/guitarists/" + $scope.band.guitarist_id)
        .then(function(response) {
            $scope.band_guitaristname = response.data.name;
        });
    }
    
    $scope.setBandID = function(id) {
        $scope.req_bandID = id;
        
        $http.get("api/api.php/bands/" + id)
        .then(function(response) {
            $scope.bandSelected = true;
            $scope.band = response.data;
            $scope.band.guitarist_id = parseInt($scope.band.guitarist_id);
            $scope.bandGuitaristChanged();
        });
    }
    
    $scope.postNewBand = function() {
        var j = {"name":$scope.band.name,
                "location":$scope.band.location,
                "guitarist_id":$scope.band.guitarist_id};
        $http.post("api/api.php/bands/", j)
        .then(function(response) {
            $scope.bandSelected = true;
            $scope.band = response.data;
            $scope.band.guitarist_id = parseInt($scope.band.guitarist_id);
            refreshBands();
            postMessage("Entry added!", 'page-bands');
        });
    }
    
    $scope.deleteBand = function(id) {
        if($scope.bandSelected == true){
            $http.delete("api/api.php/bands/" + id)
            .then(function(response) {
                resetBand();
                refreshBands();
                postMessage("Entry deleted!", 'page-bands');
            });
        }
    }
    
    $scope.updateBand = function(id) {
        var j = {"name":$scope.band.name,
                "location":$scope.band.location,
                "guitarist_id":$scope.band.guitarist_id};
        if($scope.bandSelected == true){
            $http.put("api/api.php/bands/" + id, j)
            .then(function(response) {
                refreshBands();
                postMessage("Entry updated!", 'page-bands');
            });
        }
    }
    
    $scope.transitioning = false;
    $scope.loggedIn = false;
    $scope.loginMessage = "";
    $scope.user = {"name":"","password":""};
    $scope.debugMessage = "";
    $scope.imgSource = "";
    refreshSongs();
    resetSong();
    refreshGuitarists();
    resetGuitarist();
    refreshBands();
    resetBand();
    $scope.goToPage('page-login');
    
});

app.filter("secToMins", function(){
    return function(seconds){
        if(isNaN(seconds)) return "";
        return "(" + Math.floor(seconds/60) + " minutes, " + seconds%60 + " seconds)"
    }
});
