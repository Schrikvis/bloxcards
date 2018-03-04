return {
		Owner = "The Scholar";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"Ah! Greetings!";
				"Welcome to my humble abode.";
				"I am the Scholar.";
				
				"I rarely talk to others.";
				"I get caught up in my research!";
				"I think I've found a portal to another dimension!";
				
				"You look interested.";
				"Do you want to see my portal?";
				"I love sharing my experiments!";
			};
			Question = {
				Yes = {
					Text = "Sure!"; 
					Destination = "StartFight";
				};
				No = {
					Text = "Sounds dangerous.";
					Destination = "Same";
				};
			};
		};
		
		StartFight = {
			Text = {"So glad you said yes!"; "En garde!"};
			EndPoint = true;
		};
		Same = {
			Text = {
				"I understand.";
				"My work is a bit exotic.";
				"Come back if you change your mind!";
			};
			EndPoint = true;
		}
	}