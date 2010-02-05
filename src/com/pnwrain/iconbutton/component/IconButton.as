package com.pnwrain.iconbutton.component
{
	import spark.components.Button;
	import spark.primitives.BitmapImage;
	
	[Style(name="icon", type="Class")]
	public class IconButton extends Button
	{
		[SkinPart(required="false")]
		public var iconHolder:BitmapImage;
		
		public function IconButton()
		{
			super();
		}
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
			
			if ( partName == "iconHolder" ) {
				var iconClass:Class = Class(getStyle("icon"));
				if ( iconClass == null )
				{
					instance = null;
				}else{
					BitmapImage(instance).source = new iconClass();
				}
			}
		}
	}
}