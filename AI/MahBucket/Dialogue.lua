return {
		Owner = "MahBucket";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Greetings, friend!";
				"Make yourself at home.";
				"Would you like some of my honey?";
				
				"You know, some people want to nerf bees.";
				"As the guardian of bees, this troubles me.";
				"They just want to be free q.q";
				
				"Are you one of those people?";
				"Do you want to nerf bees?";
			};
			Question = {
				Yes = {
					Text = "Bees are okay."; 
					Destination = "Same";
				};
				No = {
					Text = "NERF BEES!";
					Destination = "StartFight";
				};
			};
		};
		
		StartFight = {
			Text = {"That's so rude!"; "I MUST PROTECT THE BEES!"};
			EndPoint = true;
		};
		Same = {
			Text = {
				"Thank you.";
				"It's great to see that there are still decent people.";
				"Come back anytime!";
			};
			EndPoint = true;
		}
	}