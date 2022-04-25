#pragma strict

var rotation = 1.0;

 

function Update () {
transform.Rotate (0,0,5);
//transform.Rotate (0,rotation * Time.deltaTime,0);

}