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
	/// This is a game component that implements IUpdateable.
	/// </summary>
	public class ModelManager : DrawableGameComponent
	{
		public List<BasicModel> models = new List<BasicModel>();

		public ModelManager(Game game)
			: base(game)
		{
			// TODO: Construct any child components here
		}

		/// <summary>
		/// Allows the game component to perform any initialization it needs to before starting
		/// to run.  This is where it can query for any required services and load content.
		/// </summary>
		public override void Initialize()
		{
			Model asteroid = ((Game1)Game).Content.Load<Model>(@"Models/LargeAsteroid");
			//Example Asteroids.
			Asteroid asteroid1 = new Asteroid((Game1)Game, asteroid, new Vector3(0, 0, -1500));

			models.Add(asteroid1);

			base.Initialize();
		}

		protected override void LoadContent()
		{

		}

		/// <summary>
		/// Allows the game component to update itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		public override void Update(GameTime gameTime)
		{
			for (int i = 0; i < models.Count; i++)
			{
				models[i].Update();
			}

			base.Update(gameTime);
		}

		public override void Draw(GameTime gameTime)
		{
			foreach (BasicModel model in models)
			{
				model.Draw(((Game1)Game).camera);
			}

			base.Draw(gameTime);
		}
	}
}
