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

namespace SpaceGame
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class Game1 : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		SpriteFont debugText;

		public Models.ModelManager modelManager { get; protected set; }
		public Player.PlayerShip playerShip { get; protected set; }
		public Player.Camera camera { get; protected set; }

		private string debug { get; set; }

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 1280;
			graphics.PreferredBackBufferHeight = 960;
			Content.RootDirectory = "Content";
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			//Create the camera 50 units behind Vector3.Zero where playerShip spawns.
			camera = new Player.Camera(this, 50.0f * Vector3.Backward, Vector3.Zero, Vector3.Up);
			Components.Add(camera);

			modelManager = new Models.ModelManager(this);
			Components.Add(modelManager);

			Model playerShipModel = Content.Load<Model>(@"Models\PlayerShipModel");
			playerShip = new Player.PlayerShip(this, playerShipModel);

			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			debugText = Content.Load<SpriteFont>(@"Misc\DebugText");

			// TODO: use this.Content to load your game content here
		}

		/// <summary>
		/// UnloadContent will be called once per game and is the place to unload
		/// all content.
		/// </summary>
		protected override void UnloadContent()
		{
			// TODO: Unload any non ContentManager content here
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
				this.Exit();

			playerShip.Update();
			camera.UpdateCamera(gameTime, playerShip);

			if (Keyboard.GetState().IsKeyDown(Keys.Space))
			{
				modelManager.FireShot(playerShip, gameTime);
			}

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.Black);

			//Debug Text Rendering.
			spriteBatch.Begin();

			debug =		"Health: " + playerShip.health.ToString() + "\n" +
						"Score: " + playerShip.playerScore.ToString();
			spriteBatch.DrawString(debugText, debug, new Vector2(10, 10), Color.White);

			spriteBatch.End();

			playerShip.Draw(camera);

			base.Draw(gameTime);
		}

		public void GameOver(float inputScore)
		{
			//Change game state and display score.
		}
	}
}
