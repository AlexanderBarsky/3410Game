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
			Asteroid asteroid1 = new Asteroid((Game1)Game, asteroid, new Vector3(0, 0, -500));
			Asteroid asteroid2 = new Asteroid((Game1)Game, asteroid, new Vector3(-1.05f, -1.05f, -1000f));
			Asteroid asteroid3 = new Asteroid((Game1)Game, asteroid, new Vector3(1.05f, -1.05f, -1500f));
			Asteroid asteroid4 = new Asteroid((Game1)Game, asteroid, new Vector3(1.10f, -1.10f, -2000f));
			Asteroid asteroid5 = new Asteroid((Game1)Game, asteroid, new Vector3(-1.25f, -1.25f, -2500f));
			Asteroid asteroid6 = new Asteroid((Game1)Game, asteroid, new Vector3(-1.25f, 1.25f, -3000));

			models.Add(asteroid1);
			models.Add(asteroid2);
			models.Add(asteroid3);
			models.Add(asteroid4);
			models.Add(asteroid5);
			models.Add(asteroid6);

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
