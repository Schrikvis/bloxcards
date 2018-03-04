return {
		Owner = "The Matriarch";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Oh.";
				"Another one.";
				"Another worm scurrying about.";
				
				"Since you care about me so much,";
				"allow me to introduce myself.";
				"I am The Matriarch.";
				
				"I hear the call of all birds.";
				"I listen to them, and they listen back.";
				"I wouldn't expect you to understand.";
				
				"...What?";
				"A children's card game? Are you serious?";
				"Do you insist on wasting my time?"
			};
			Question = {
				Yes = {
					Text = "Yes."; 
					Destination = "StartFight";
				};
				No = {
					Text = "No.";
					Destination = "Same";
				};
			};
		};
		
		StartFight = {
			Text = {"*Sigh*"; "Very well. If you insist."};
			EndPoint = true;
		};
		Same = {
			Text = {
				"As I thought.";
				"Please leave my sight.";
			};
			EndPoint = true;
		}
	}