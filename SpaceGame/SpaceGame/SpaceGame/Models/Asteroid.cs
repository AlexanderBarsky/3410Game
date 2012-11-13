using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.GamerServices;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;

namespace SpaceGame.Models
{
	/// <summary>
	/// This asteroid enemy should simply exist in space at a position defined in the constructor and merely spin at a constant speed
	/// in a randomized direction.  This should simply be an obstacle for the player and pose a threat when he's trying to avoid enemies.
	/// </summary>
	class Asteroid : BasicModel
	{
		public Asteroid(Game inputGame, Model inputModel , Vector3 inputPosition)
			: base(inputGame, inputModel)
		{
			position = inputPosition;

			world = Matrix.CreateWorld(position, Vector3.Forward, Vector3.Up);
		}

		public override void Update()
		{
			world = Matrix.CreateWorld(position, Vector3.Forward, Vector3.Up);

			base.Update();
		}
	}
}
