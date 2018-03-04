return {
		Owner = "The Merchant";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Hey, kid!";
				"What's your opinion on Capitalism?";
				"My life depends on it!";
				
				"I am a collector of exotic wares.";
				"I've just come over here, actually.";
				"My last trip to Russia was profitable.";
				
				"So, how about it?";
				"Do you want to see some forbidden secrets?";
				

			};
			Question = {
				Yes = {
					Text = "Sure!"; 
					Destination = "StartFight";
				};
				No = {
					Text = "I need an adult";
					Destination = "Same";
				};
			};
		};
		
		StartFight = {
			Text = {"That's good to hear."; "C'mon. Browse my wears!"};
			EndPoint = true;
		};
		Same = {
			Text = {
				"Oh, oh! Wrong signals!";
				"Leave as you wish!"
			};
			EndPoint = true;
		}
	}