<?php
    get_header();
    ?>
<div class="MainContainer">


<div id='container'>
  <div id="group1">
    <div class="background">
      <center>I'm an element far away, SUCCESSFULLY pretending to be close by.</center>
    </div>
    <div class="foreground">
      <center>I'm an element close by.</center>
    </div>
  </div>
</div>




<style>
  div {
  box-sizing: border-box;
}

#container {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  perspective: 1px;
  overflow-x: hidden;
  overflow-y: scroll;
}

#group1 {
  height: 1000px;
  position: relative;
  transform-style: preserve-3d;
  font-size: 20px;
}

.background {
   
  transform: translateZ(-1px) scale(2);
  height: 500px;
  width: 100%;
  position: absolute;
  top: calc(250px - 50vh);
  background: url('assets/img/Vencedor.jpg');
  padding-top: 100px;
  
}

.foreground {
  position: absolute;
  top: 500px;
  height: 500px;
  width: 100%; 
  background: #23819C;
  opacity: 0.8;
  padding-top: 100px;
}
</style>