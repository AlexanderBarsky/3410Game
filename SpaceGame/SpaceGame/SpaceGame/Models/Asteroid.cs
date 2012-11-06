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
		//Rotation mechanics
		Matrix rotation = Matrix.Identity;
		float rotationValue { get; set; }

		public Asteroid(Game inputGame, Model inputModel , Vector3 inputPosition)
			: base(inputGame, inputModel)
		{
			position = inputPosition;

			//Chooses a random direction to spin.
			Random random = new Random();
			if (random.Next(0, 1) == 1)
			{
				rotationValue = 1.0f;
			}
			else
			{
				rotationValue = -1.0f;
			}
		}

		public override void Update()
		{
			rotation *= Matrix.CreateRotationY(rotationValue * (MathHelper.Pi / 180));

			base.Update();
		}

		public override Matrix GetWorld()
		{
			return world * rotation;
		}
	}
}
