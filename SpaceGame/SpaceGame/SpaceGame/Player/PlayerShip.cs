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
		public Vector3 position { get; protected set; }

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
				if (position.Y >= -21)
				{
					position -= Vector3.Up;
				}
				else
				{
					position = new Vector3(position.X, -22, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.S))
			{
				if (position.Y <= 21)
				{
					position -= Vector3.Down;
				}
				else
				{
					position = new Vector3(position.X, 22, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.A))
			{
				if (position.X <= 39)
				{
					position -= Vector3.Left;
				}
				else
				{
					position = new Vector3(40, position.Y, position.Z);
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D))
			{
				if (position.X >= -39)
				{
					position -= Vector3.Right;
				}
				else
				{
					position = new Vector3(-40, position.Y, position.Z);
				}
			}

			position += Vector3.Forward;

			base.Update();
		}

		public override void Draw(Camera camera)
		{
			world = Matrix.CreateWorld(new Vector3(0, 0, position.Z), Vector3.Forward, Vector3.Up);
			base.Draw(camera);
		}
	}
}