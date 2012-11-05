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
		public Vector3 direction = Vector3.Forward;

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
				position -= Vector3.Up;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.S))
			{
				position -= Vector3.Down;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.A))
			{
				position += Vector3.Left;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D))
			{
				position += Vector3.Right;
			}

			base.Update();
		}
	}
}