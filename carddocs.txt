# The Blox Cards Documentation

The General Card Effect Syntax
General case (single effect):

Effect = {
	Name
	Description
	Type
	Power
	Target
	Increase
}

The game executes the single effect as you would expect.

Sub-Effect case (multiple effects):

Effect = {
	Name
	Description
	Type
	Power = {
		{Power2, Increase2, Target2}
	}
	Target1
	Increase1
}

In the event of subeffects, game will first look for a secondary 
target or increase. Should it not be able to find such secondary 
values, it will fall back to the primary one. Should there be no 
primary one but the effect does require it, the game crashes. 
Make sure all effects get the info they need to function.

For example, the following effect uses Target1 for its subeffect.
Effect = {
	Power = {
		{Power2, Increase2}
	}
	Target1
	Increase1
}

This one uses Target2 but Increase1 for its subeffect.
Effect = {
	Power = {
		{Power2, nil, Target2}
	}
	Target1
	Increase1
}

---------------------------------------------------------------

Some terms, "glossary"

- Fatique
Whenever a player needs to draw a card but cannot because there are
no cards left in his deck, the player receives damage.

- Grinding
Whenever a player needs to draw a card but cannot because his hand
is full, the cards are removed from his deck but aren't added to his
hand. 

---------------------------------------------------------------

Card effect Types (triggers)
Assign these to card effects by setting their Type to one of 
these strings.

- OnTarget
Fires when the card is targeted.

- OnAttacked
Fires when the card is attacked.

- OnSummon
Fires when the card is summoned.

- OnDestroy
Fires when the card is killed.

- OnEnd
Fires when a turn ends.

- OnTurnStart / Field (Terrain only)
Fires when a turn begins. "Field" is never triggered naturally.

- OnAttack
Fires when the card attacks.

- OnAttackEnd
Fires after the card has finished attacking.

- OnAttackDestroy
Fires when the card attacks and kills an enemy card.

- OnStrike
Fires when the card attacks the enemy player.

- OnAllySummon, OnEnemySummon, OnAnySummon
Fires when the player or the enemy player summons a fighter.

- OnCast, OnAllyCast, OnEnemyCast
Fires when either player, the player or the enemy player casts an
effect or terrain card.

- OnHealthGain, OnHealthLoss, OnEnemyHealthGain, OnEnemyHealthLoss
Fires when the player or the enemy player gains or loses life.

- OnDeath
Fires when the card dies.

- OnAnyDeath, OnEnemyDeath, OnAllyDeath
Fires when a card dies on any field, the card's opposing field or the
card's field.

- OnLock, OnUnlock
Fires when a card is locked or unlocked.

---------------------------------------------------------------

Effect Targets

- Archetype
Targets all cards with the card's archetype.

- NotArchetype
Targets all cards that don't have the card's archetype.

- Ally
Targets all cards allied to the card or the player playing the card.

- All
Targets all cards or all players.

- Opponent
Targets all opposing cards, or the opposing card, or the opposing
player.

- Aggressor
Targets the opposing card when applicable.

- OpponentCards
Targets all opposing cards.

- Single, Target
Targets a single card as chosen by the playing player. Target is
preferred to Single to better communicate that the player Targets 
a card, triggering OnTarget effects.

- Self
Targets the card itself.

- The Color* target types:
	- ColorNeutral
	- ColorGreen
	- ColorYellow
	- ColorRed
	- ColorBlue
Targets cards that are of the specified color.

- NewTarget
Ignore for now.

---------------------------------------------------------------

Card effect Powers

- Add
Adds the card with the name of Increase to a hand.

- Damage
Damages the Target cards by Increase.

- Draw
Makes the Target player (All, Opponent or an implicit Ally) draw
Increase amount of cards from his deck. This triggers Fatique.

- Heal
Heals the Target cards by Increase.

- Lock
Locks the Target for Increase turns.

- Unlock
Reduces the Target's remaining locked turns by Increase turns.

- Charge
Unlocks the card immedeately. Has an implicit Self target. Use the
passive version if able.

- DeckAdd
Adds the card of name Increase to the Target's deck.

- RandomAdd
Adds a random card of rarity Increase to the Target's hand.
RandomAdd's Increase allows for 'complex' statements.
Shedletsky and Token cards are never selected.
Stitch together a Color, Archetype and Rarity to specify from what 
pool the card should be selected.
Providing no specifier or "All" has the effect of selecting any card.
Consider the following examples:
"RareYellowDoge"
"BlueNinja"
"CommonGreen"
"Neutral"
"Bee"
"All"

- Summon
Summons an Increase card to the Target's field. Does not trigger any
OnSummon effect.

- SummonWithEffect
Functions identically to Summon but does trigger an OnSummon effect
if applicable.

- RandomSummon, RandomSummonWithEffect
Interprets Increase like RandomAdd would but instead summons the card.

- Strenghten
Adds Increase to Target cards' power.

- Swap
Swaps the target's Power and Health stats.

- SetHealth
Sets the Target's health to Increase.

- SetPower
Sets the Target's power to Increase.

- Shedletsky
Does the Shedletsky effect.

- ColorName (ie. "Blue")
Adds Increase icons of the color to the Target player.

- SetColorName (ie. "SetBlue")
	- SetNeutral
	- SetGreen 
	- SetYellow
	- SetRed
	- SetBlue
Set the amount of colored icons of the Target player to Increase.

- RevealHand
Flips the cards in the target's hand, revealing them to the other
player.

- Cost
Reduces the player's life by Increase. Has an implicit Ally target 
that cannot be changed.

- SetLife
Sets the player's life to Increase.

- Inflict
Inflicts Increase damage to All players or the opponent. Inflict 
cannot be used to only target the Ally player.

---------------------------------------------------------------

Card Modifiers
These aren't related to card effects. Instead, they modify card 
behaviour in miscellanious ways.

- DiscardBlock
When set to true, the player cannot discard the card.

- AttackBlock
When set to true, the card cannot attack enemy cards nor the enemy
player.

- CounterBlock
When set to true, this card cannot counterattack enemy cards.

- CounterAttackBlock
When set to true, enemy cards cannot counterattack this card.

- FaceBlock
When set to true, the card cannot attack the enemy player.

- Token
When set to true, the card can't generate icons.

- Charge
When set to true, the card can attack when summoned.

- WeakenImmune
The card is immune to effects that decrease its health or power.

- SwapImmune
The card is immune to effects that swap its health and power.

- Stealth
When set to true, the card is not detected by OnAllySummon, 
OnEnemySummon or OnAnySummon effects.

---------------------------------------------------------------

Card Properties
Card properties do not affect gameplay but instead describe what a
card is.

- Original
When a card is a cosmetic variation of another, this property
should be the index of the original card it inherits its gameplay
attributes from. Both cards should be complete and should function
identically.

- AltArt
When set to true, the card will appear in the minigames and be
disqualified from auctions. It will be treated as a special cosmetic
card.

- AltCards
This is a table of a card's alternate cards. 
Alternate cards first check their own table for data, then the table
of their Original card. This way, anything can be optionally 
customized, including Effect properties.

For example, the following tables form a valid alt card system:
["CardOne"] = {
	AltCards = {
		["CardOne-Artv"] = {
			Id = 261432099;
			AltArt = true;
			Bio = "Part of the Aife collection!";
		};
		["CardOne Halloween"] = {
			Id = 461436099;
			Effect = {
				Name = "Spooky help";
				Description = "Summon a spooky thing.";
				Power = {{"Summon","Spooky Thing"}};
			}
			Bio = "Boo!";
		}
	}
	Effect = {
		Name = "Call for help"
		Description = "Summon a thing.";
		Power = {{"Summon", "Thing"}}
		Target = "Ally";
	}
};


In this example, CardOne is the Original card.
CardOne-Artv is an Alternate Art card. It has its own image Id
and Bio. CardOne Halloween is special because its effect was modified:
it has a custom name, description and power for its effect, 
as well as a unique image Id and card Bio.

---------------------------------------------------------------

~
