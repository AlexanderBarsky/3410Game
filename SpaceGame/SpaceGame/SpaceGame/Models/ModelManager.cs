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
		public List<Projectile> shots = new List<Projectile>();
		private Game game;

		//Bullet variables
		private int shotCooldown = 0;

		public ModelManager(Game inputGame)
			: base(inputGame)
		{
			game = inputGame;
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
				if (models[i].position.Z > 1)
				{
					models.RemoveAt(i);
				}
				else
				{
					if (((Game1)Game).playerShip.CollidesWith(models[i].model, models[i].GetWorld()))
					{
						models.RemoveAt(i);
						((Game1)Game).DestroyPlayer();
						i--;
					}
				}
			}
			for (int i = 0; i < shots.Count; i++)
			{
				shots[i].Update();
				if (shots[i].position.Z < -1.0f * Misc.Settings.CAMERA_DISTANCE)
				{
					shots.RemoveAt(i);
					i--;
				}
				else
				{
					for (int j = 0; j < models.Count; j++)
					{
						if (shots[i].CollidesWith(models[j].model, models[j].GetWorld()))
						{
							models.RemoveAt(j);
							shots.RemoveAt(i);
							i--;
							break;
						}
					}
				}
			}

			base.Update(gameTime);
		}

		public override void Draw(GameTime gameTime)
		{
			foreach (BasicModel model in models)
			{
				model.Draw(((Game1)Game).camera);
			}
			foreach (Projectile shot in shots)
			{
				shot.Draw(((Game1)Game).camera);
			}

			base.Draw(gameTime);
		}

		public void FireShot(Player.PlayerShip ship, GameTime gameTime)
		{
			if (shotCooldown <= 0)
			{
				Model projectileModel = ((Game1)Game).Content.Load<Model>(@"Models/LargeAsteroid");
				Projectile shot = new Projectile(game, projectileModel, ship.position);
				shots.Add(shot);

				shotCooldown = Misc.Settings.SHOT_DELAY;
			}
			else
			{
				shotCooldown -= gameTime.ElapsedGameTime.Milliseconds;
			}
		}
	}
}
