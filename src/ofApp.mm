#include "ofApp.h"

#define RADIUS					30
ofPoint lastTouch;
ofPoint previousTouch;
Boolean draw;
float r=0;
float red=0;
float green=0;
float blue=0;

//--------------------------------------------------------------
void ofApp::setup(){
    lastTouch.set(0,0);
    ofBackground(74, 81, 120);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofEnableAlphaBlending();
    if (lastTouch.x==previousTouch.x&&lastTouch.y==previousTouch.y){
        ofFill();
        ofCircle(lastTouch.x,lastTouch.y, 30);
    }
    else if(lastTouch.x!=0 && lastTouch.y!=0){
        
        r=ofRandom(6);
        if(r>=5 && r>4){
            ofSetColor(249,37,200);
        }
        else if (r>=4 && r>3){
            ofSetColor(83,37,249);
        }
        else if(r>=3 && r>2){
            ofSetColor(62,220,123);
        }
        else if(r>=2 && r>1){
            ofSetColor(242,249,37);
        }
        else if(r>=1 && r>0){
            ofSetColor(48,241,255);
        }
        else{
            ofSetColor(240,37,19);
        }
        
        ofFill();
        ofCircle(lastTouch.x,lastTouch.y, 30);
        previousTouch=lastTouch;
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    lastTouch.set(touch.x,touch.y);
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

