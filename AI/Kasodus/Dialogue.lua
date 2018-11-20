return {
		Owner = "Kasodus";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Hi there!";
				"See you found the headquarters.";
				"This is where the cool kids hang out.";
				
				"Wanna duel, bro?";
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
			Text = {"Alright then!"};
			EndPoint = true;
		};
		Same = {
			Text = {
				"Oh... Alright.";
				"If you manage to get on the roof...";
				"Can you tell that bird woman to get off?";
			};
			EndPoint = true;
		}
	}