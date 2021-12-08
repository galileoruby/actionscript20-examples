/**

Player Class
author: Galileo
version: 1.0
modified: 03-december-2021
copyright: Lex Luthor  Corp.


*/

import mx.utils.Delegate;

class PlayerClass {


	public var _xm:XML;
	private var _players:Array;
	private var _teamName:String;



	//Constructor
	public function PlayerClass() {

		_xm = new XML();

		this._players = new Array();//
		//this._xm= currentBody;

 trace("calling constructor");
		//XML.prototype.ignoreWhite = false;
		//
		//var xx:Object;
		//
		//_xm.onLoad = Delegate.create(this,onLoadEvent);


		//this._xm.load(pathXML);


		//this._xm.onData=readXML();


		//this._xml.onData= function(src: String){
		//trace("onData: "+ src);
		//}


		this._teamName = "Manchester City";

	}
	public function get nameTeam():String {
		return this._teamName;
	}
	public function set setXML(bodyXML:XML) {
		this._xm = bodyXML;

		//trace("setXML: " + bodyXML);

	}
	public function get xm():XML {
		return this._xm;
	}
	public function get allPlayers():Array {

		trace(this._players);
		return this._players;
	}
	public function readXML() {




		for (var i:Number = 1; i<this._xm.firstChild.childNodes[0].childNodes.length-1; i++) {

			var currentPlayer = this._xm.firstChild.childNodes[0].childNodes[i-1];
			var namex:String = currentPlayer.attributes.number+" "+currentPlayer.attributes.name;
			var currentNumber:Number = currentPlayer.attributes.number;

			trace("name: "+namex + " , i: " + i);

			this._players[i-1] = namex;

		}

	}//public function readXML() {

}//class PlayerClass {