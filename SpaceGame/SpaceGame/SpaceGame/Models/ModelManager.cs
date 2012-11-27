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
			//Debug Setup

			//Model asteroid = ((Game1)Game).Content.Load<Model>(@"Models/AsteroidModel");
			////Example Asteroids.
			//Asteroid asteroid1 = new Asteroid((Game1)Game, asteroid, new Vector3(Misc.Settings.TOP_REGION_SPAWN_BOUNDARY, Misc.Settings.LEFT_REGION_SPAWN_BOUNDARY, -500));
			//Asteroid asteroid2 = new Asteroid((Game1)Game, asteroid, new Vector3(Misc.Settings.TOP_REGION_SPAWN_BOUNDARY, Misc.Settings.RIGHT_REGION_SPAWN_BOUNDARY, -1000));
			//Asteroid asteroid3 = new Asteroid((Game1)Game, asteroid, new Vector3(Misc.Settings.BOTTOM_REGION_SPAWN_BOUNDARY, Misc.Settings.LEFT_REGION_SPAWN_BOUNDARY, -1500));
			//Asteroid asteroid4 = new Asteroid((Game1)Game, asteroid, new Vector3(Misc.Settings.BOTTOM_REGION_SPAWN_BOUNDARY, Misc.Settings.RIGHT_REGION_SPAWN_BOUNDARY, -2000));

			//models.Add(asteroid1);
			//models.Add(asteroid2);
			//models.Add(asteroid3);
			//models.Add(asteroid4);

			GenerateAsteroids(10);

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
						((Game1)Game).playerShip.DamagePlayer(models[i].damageAmount);
						models.RemoveAt(i);
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
				Model projectileModel = ((Game1)Game).Content.Load<Model>(@"Models/PlayerProjectile");
				Projectile shot = new Projectile(game, projectileModel, ship.position);
				shots.Add(shot);

				shotCooldown = Misc.Settings.SHOT_DELAY;
			}
			else
			{
				shotCooldown -= gameTime.ElapsedGameTime.Milliseconds;
			}
		}

		public void GenerateAsteroids(int amountToGenerate)
		{
			List<Asteroid> createdAsteroids = new List<Asteroid>();
			Model asteroidModel = ((Game1)Game).Content.Load<Model>(@"Models/AsteroidModel");

			Random randomValue = new Random();

			for (int i = 0; i < amountToGenerate; i++)
			{
				//Creates an asteroid
				Asteroid temp = new Asteroid(game, asteroidModel, new Vector3((float)randomValue.Next((int)Misc.Settings.LEFT_REGION_SPAWN_BOUNDARY, (int)Misc.Settings.RIGHT_REGION_SPAWN_BOUNDARY), (float)randomValue.Next((int)Misc.Settings.BOTTOM_REGION_SPAWN_BOUNDARY, (int)Misc.Settings.TOP_REGION_SPAWN_BOUNDARY), (float)randomValue.Next(Misc.Settings.Z_REGION_SPAWN_BOUNDARY, (int)((Game1)Game).playerShip.position.Z) - 50), ref randomValue);

				//Checks to make sure this asteroid does not conflict with existing asteroids.
				for (int j = 0; j < models.Count; j++)
				{
					//If it conflicts, generate a new one and rescan the list of models.
					if (temp.CollidesWith(models[j].model, models[j].GetWorld()))
					{
						temp = new Asteroid(game, asteroidModel, new Vector3((float)randomValue.Next((int)Misc.Settings.LEFT_REGION_SPAWN_BOUNDARY, (int)Misc.Settings.RIGHT_REGION_SPAWN_BOUNDARY), (float)randomValue.Next((int)Misc.Settings.BOTTOM_REGION_SPAWN_BOUNDARY, (int)Misc.Settings.TOP_REGION_SPAWN_BOUNDARY), (float)randomValue.Next(Misc.Settings.Z_REGION_SPAWN_BOUNDARY, (int)((Game1)Game).playerShip.position.Z) - 50), ref randomValue);
						j = 0;
					}
				}

				//Success!  Add it to the list.
				models.Add(temp);
			}
		}
	}
}
