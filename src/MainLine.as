﻿package {	import flash.display.Sprite;	import flash.display.StageAlign;	import flash.display.StageScaleMode;	import flash.events.Event;		import prfm.view.MainContainer;	public class MainLine extends Sprite {		public function MainLine() {			super();			if ( stage ) {				onAdd(null);			} else {				this.addEventListener(Event.ADDED_TO_STAGE, onAdd);			}		}				private function onAdd(e:Event):void {			this.removeEventListener(Event.ADDED_TO_STAGE, onAdd);						stage.scaleMode = StageScaleMode.NO_SCALE;			stage.align = StageAlign.TOP_LEFT;			stage.quality = "best";						var cont:MainContainer = new MainContainer();			this.addChild(cont);			cont.init();		}			}}