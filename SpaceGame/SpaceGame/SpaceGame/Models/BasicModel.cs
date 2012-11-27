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
	/// This BasicModel class should contain all the needed properties and methods in order to render a model on the screen and move it
	/// within our game.  All enemy logic should be defined in it's respective class and NOT this one since this is simply our foundation.
	/// </summary>
	public abstract class BasicModel
	{
		public Model model { get; protected set; }
		public Vector3 position { get; protected set; }
		public float damageAmount { get; protected set; }
		protected Matrix world = Matrix.Identity;
		protected Game game;

		public BasicModel(Game inputGame, Model inputModel)
		{
			model = inputModel;
			game = inputGame;
		}

		public virtual void Update()
		{

		}

		public virtual void Draw(Player.Camera camera)
		{
			game.GraphicsDevice.DepthStencilState = DepthStencilState.Default;

			Matrix[] transforms = new Matrix[model.Bones.Count];
			model.CopyAbsoluteBoneTransformsTo(transforms);

			foreach (ModelMesh mesh in model.Meshes)
			{
				foreach (BasicEffect effect in mesh.Effects)
				{
					effect.EnableDefaultLighting();
					effect.Projection = camera.projection;
					effect.View = camera.view;
					effect.World = GetWorld() * mesh.ParentBone.Transform;
				}
				mesh.Draw();
			}
		}

		public virtual Matrix GetWorld()
		{
			return world;
		}

		public bool CollidesWith(Model otherModel, Matrix otherWorld)
		{
			foreach (ModelMesh mesh in model.Meshes)
			{
				foreach (ModelMesh otherMesh in otherModel.Meshes)
				{
					if (mesh.BoundingSphere.Transform(GetWorld()).Intersects(otherMesh.BoundingSphere.Transform(otherWorld)))
						return true;
				}
			}
			return false;
		}
	}
}
