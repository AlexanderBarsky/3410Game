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
		protected Vector3 facingDirection { get; set; }
		protected Vector3 upDirection { get; set; }

		public Asteroid(Game inputGame, Model inputModel, Vector3 inputPosition, ref Random randomValue)
			: base(inputGame, inputModel)
		{
			position = inputPosition;

			facingDirection = new Vector3((float)randomValue.Next(-10, 10), (float)randomValue.Next(-10, 10), (float)randomValue.Next(-10, 10));
			upDirection = new Vector3((float)randomValue.Next(-10, 10), (float)randomValue.Next(-10, 10), (float)randomValue.Next(-10, 10));

			world = Matrix.CreateWorld(position, facingDirection, upDirection);

			damageAmount = 25.0f;
		}

		public override void Update()
		{
			world = Matrix.CreateWorld(position, facingDirection, upDirection);

			base.Update();
		}

	}
}
