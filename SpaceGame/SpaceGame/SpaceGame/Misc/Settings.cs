using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SpaceGame.Misc
{
	class Settings
	{
		static public float GAME_SPEED { get; set; }
		
		//PlayerShip Controls
		static public float TOP_REGION_BOUNDARY { get; set; }
		static public float BOTTOM_REGION_BOUNDARY { get; set; }
		static public float LEFT_REGION_BOUNDARY { get; set; }
		static public float RIGHT_REGION_BOUNDARY { get; set; }
		static public float BOUNDARY_OFFSET { get; set; }
		static public float MOVEMENT_RATIO { get; set; }

		//Camera Controls
		static public float CAMERA_DISTANCE { get; set; }

		//Firing Controls
		static public int SHOT_DELAY { get; set; }

		static Settings()
		{
			GAME_SPEED = 3.0f;

			TOP_REGION_BOUNDARY = 1.3f;
			BOTTOM_REGION_BOUNDARY = -1.3f;
			LEFT_REGION_BOUNDARY = -2.1f;
			RIGHT_REGION_BOUNDARY = 2.1f;
			BOUNDARY_OFFSET = 0.05f;
			MOVEMENT_RATIO = 0.05f;

			CAMERA_DISTANCE = 5000.0f;

			SHOT_DELAY = 200;
		}
	}
}
