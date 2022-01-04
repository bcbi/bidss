import React from "react";
import VideoPlayer from "react-video-js-player";
import Splash from "assets/splash_page_vid_web.mp4";
import SplashPage from "assets/splash_page.png";

const VideoJS = () => {
    const videoSrc = Splash;
    const poster = SplashPage;
    
    return (
        <div className="App">
            <h1>Videojs</h1>
            <VideoPlayer src={videoSrc} poster={poster} width="100%" height="100%" />
        </div>
    );
};
export default VideoJS;