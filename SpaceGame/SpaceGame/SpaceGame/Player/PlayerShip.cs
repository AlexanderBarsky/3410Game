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

namespace SpaceGame.Player
{
	/// <summary>
	/// This PlayerShip class will contain all of the relevant properties and methods to allow the player to control the ship and 
	/// additionally control the camera since the game is designed in the 3rd person.
	/// </summary>
	public class PlayerShip : Models.BasicModel
	{
		//Control Dimensions
		const float TOP_REGION_BOUNDARY = 1.3f;
		const float BOTTOM_REGION_BOUNDARY = -1.3f;
		const float LEFT_REGION_BOUNDARY = -2.1f;
		const float RIGHT_REGION_BOUNDARY = 2.1f;
		const float BOUNDARY_OFFSET = 0.05f;
		const float MOVEMENT_RATIO = 0.05f;

		public PlayerShip(Game game, Model inputModel)
			: base(game, inputModel)
		{
			model = inputModel;
			position = Vector3.Zero;
		}

		public override void Update()
		{
			if (Keyboard.GetState().IsKeyDown(Keys.W))
			{
				if (position.Y <= (TOP_REGION_BOUNDARY - BOUNDARY_OFFSET))
				{
					position += MOVEMENT_RATIO * Vector3.Up;
				}
				else
				{
					position = new Vector3(position.X, TOP_REGION_BOUNDARY, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.S))
			{
				if (position.Y >= (BOTTOM_REGION_BOUNDARY + BOUNDARY_OFFSET))
				{
					position += MOVEMENT_RATIO * Vector3.Down;
				}
				else
				{
					position = new Vector3(position.X, BOTTOM_REGION_BOUNDARY, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.A))
			{
				if (position.X >= (LEFT_REGION_BOUNDARY + BOUNDARY_OFFSET))
				{
					position += MOVEMENT_RATIO * Vector3.Left;
				}
				else
				{
					position = new Vector3(LEFT_REGION_BOUNDARY, position.Y, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D))
			{
				if (position.X <= (RIGHT_REGION_BOUNDARY - BOUNDARY_OFFSET))
				{
					position += MOVEMENT_RATIO * Vector3.Right;
				}
				else
				{
					position = new Vector3(RIGHT_REGION_BOUNDARY, position.Y, position.Z);
				}
			}

			position += Vector3.Forward;

			world = Matrix.CreateWorld(position, Vector3.Forward, Vector3.Up);

			base.Update();
		}
	}
}