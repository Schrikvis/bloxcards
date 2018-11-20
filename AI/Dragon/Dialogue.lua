return {
		Owner = "Dragon";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Ohayo!";
				"Duhragon Islando ni kangei!";
				"Genki de ne.";
			};
			Question = {
				Yes = {
					Text = "What?"; 
					Destination = "Same";
				};
				No = {
					Text = "Omae wa mou shindeiru.";
					Destination = "StartFight";
				};
			};
		};
		
		StartFight = {
			Text = {"Nani?"};
			EndPoint = true;
		};
		Same = {
			Text = {
				"Really?";
			};
			EndPoint = true;
		}
	}