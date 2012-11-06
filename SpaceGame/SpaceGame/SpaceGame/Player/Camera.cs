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
	/// This Camera class is going to contain the 3rd person camera for the game.  This camera will be directly controlled by the
	/// PlayerShip object since it is in 3rd person and dependent on user input.
	/// </summary>
	public class Camera : Microsoft.Xna.Framework.GameComponent
	{
		private Game game { get; set; }
		public Matrix view { get; protected set; }
		public Matrix projection { get; protected set; }
		public Vector3 position, target;

		public Camera(Game inputGame, Vector3 inputPosition, Vector3 inputTarget, Vector3 inputUp)
			: base(inputGame)
		{
			game = inputGame;

			view = Matrix.CreateLookAt(inputPosition, inputTarget, inputUp);
			projection = Matrix.CreatePerspectiveFieldOfView(MathHelper.ToRadians(MathHelper.Pi), game.GraphicsDevice.Viewport.AspectRatio, 1, 3000);
			position = inputPosition;
			target = inputTarget;
		}

		/// <summary>
		/// Allows the game component to perform any initialization it needs to before starting
		/// to run.  This is where it can query for any required services and load content.
		/// </summary>
		public override void Initialize()
		{
			// TODO: Add your initialization code here

			base.Initialize();
		}

		public void UpdateCamera(GameTime gameTime, PlayerShip currentShip)
		{
			view = Matrix.CreateLookAt(position, target, Vector3.Up);
			position += Vector3.Forward;
			target += Vector3.Forward;

			base.Update(gameTime);
		}
	}
}
