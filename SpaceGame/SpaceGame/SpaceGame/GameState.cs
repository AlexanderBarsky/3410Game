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
	public enum State
	{
		MainMenu,
		GamePlay,
		GameOver,
		ChangeLevel,
		Winner
	}

	public class GameState
	{
		public State currentState = State.MainMenu;
		
		public GameState()
		{
			//Debug state defaulted.
			//currentState = State.GamePlay;
		}

		public void ChangeState(string inputState)
		{
			switch(inputState)
			{
				case "MainMenu": currentState = State.MainMenu; 
					break;
				case "GamePlay": currentState = State.GamePlay;
					break;
				case "GameOver": currentState = State.GameOver;
					break;
				case "ChangeLevel": currentState = State.ChangeLevel;
					break;
				case "Winner": currentState = State.Winner;
					break;
			}
		}
	}
}
