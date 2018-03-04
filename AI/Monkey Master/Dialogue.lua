return {
		Owner = "The Merchant";
		Start = {
			Text = {
				--WWWWWWWWWWWWWWWWWWW
				"OOKA OOKA!";
			};
			Question = {
				Yes = {
					Text = "BOOGA BOOGA!"; 
					Destination = "StartFight";
				};
				No = {
					Text = "BUNGA BUNGA!";
					Destination = "Same";
				};
			};
		};
		
		StartFight = {
			Text = {">:( >:("};
			EndPoint = true;
		};
		Same = {
			Text = {
				"...";
				"Gross.";
				"You take that elsewhere.";
			};
			EndPoint = true;
		}
	}