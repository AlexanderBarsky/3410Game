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
		static public float TOP_REGION_BOUNDARY { get; private set; }
		static public float BOTTOM_REGION_BOUNDARY { get; private set; }
		static public float LEFT_REGION_BOUNDARY { get; private set; }
		static public float RIGHT_REGION_BOUNDARY { get; private set; }
		static public float BOUNDARY_OFFSET { get; private set; }
		static public float MOVEMENT_RATIO { get; private set; }

		//Camera Controls
		static public float CAMERA_DISTANCE { get; private set; }

		//Firing Controls
		static public int SHOT_DELAY { get; set; }
		static public float BULLET_SPEED { get; private set; }

		//Spawning Boundaries
		static public float TOP_REGION_SPAWN_BOUNDARY { get; private set; }
		static public float BOTTOM_REGION_SPAWN_BOUNDARY { get; private set; }
		static public float LEFT_REGION_SPAWN_BOUNDARY { get; private set; }
		static public float RIGHT_REGION_SPAWN_BOUNDARY { get; private set; }
		static public int Z_REGION_SPAWN_BOUNDARY { get; private set; }

		static Settings()
		{
			GAME_SPEED = 1.0f;

			TOP_REGION_BOUNDARY = 1.75f;
			BOTTOM_REGION_BOUNDARY = -1.75f;
			LEFT_REGION_BOUNDARY = -1.75f;
			RIGHT_REGION_BOUNDARY = 1.75f;
			BOUNDARY_OFFSET = 0.05f;
			MOVEMENT_RATIO = 0.05f;

			TOP_REGION_SPAWN_BOUNDARY = 2.0f;
			BOTTOM_REGION_SPAWN_BOUNDARY = -2.0f;
			LEFT_REGION_SPAWN_BOUNDARY = -2.0f;
			RIGHT_REGION_SPAWN_BOUNDARY = 2.0f;
			Z_REGION_SPAWN_BOUNDARY = -5000;

			CAMERA_DISTANCE = 5000.0f;

			SHOT_DELAY = 200;

			BULLET_SPEED = 5.0f;
		}
	}
}
