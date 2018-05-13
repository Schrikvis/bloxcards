return {
		Owner = "Melee Disk";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Wanna play a small game?";
				"Fox only, Final Destination.";
				"No items, 5 stocks.";
			};
			Question = {
				Yes = {
					Text = "Yes"; 
					Destination = "StartFight";
				};
				No = {
					Text = "Sounds lame";
					Destination = "Dissapoint";
				};
			};
		};
		
		StartFight = {
			Text = {"Well. Something like that."; "Too late to change your mind!"; "Let's go!"};
			EndPoint = true;
		};
		Dissapoint = {
			Text = {
				":(";
			};
			EndPoint = true;
		}
	}