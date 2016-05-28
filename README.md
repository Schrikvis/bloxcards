# The BloxCards card library.

## What?
Bloxcards is a trading card place on ROBLOX scripted by Drager980. In BloxCards,
players can collect and trade over 500 cards and battle with their decks. The game is
heavily inspired by SNK vs. Capcom: Card Fighters Clash, sharing many of its core
mechanics but also adding some of its own (such as the inability to use white icons
as any icons).

## Then?
Everyone agreed it'd be a good idea to let the community handle the stats and effects of
the game's cards.

## Documentation that shouldn't be here

**Card effect triggers**
Assign these to card effects by setting their .Effect.Type to one of these strings.
[2] is generally a modifier for the main Increase of the effect.
[3] is generally a modifier for the main Target of the effect.

- OnTarget
Fires when the card is attacked.


- OnSummon
Fires when the card is summoned.


- OnDestroy
Fires when the card is killed.


- OnEnd
Fires when a turn ends.


- Field
Fires when a turn begins.


- OnAttack
Fires when the card attacks.


**Effect target types**
- Archetype
- Ally
- All
- Opponent
- Single
- Self


**Card effect types**

- Add
Adds the card with the name of Increase or [2] to a hand.

- The Set* effect types:
	- SetNeutral
	- SetGreen 
	- SetYellow
	- SetRed
	- SetBlue
Sets colored icons of Target (Ally or Opponent) to Increase or [2].

- Damage
Damages the Target cards by Increase or [2].

- Draw
Makes the Target player darw acard.

- Heal
Heals the Target cards by Increase or [2].

- Lock
Locks the Target for Increase or [2] turns.

- Unlock
Reduces the Target's remaining locked turns by Increase or [2] turns.

- Charge
Unlocks the card.

- DeckAdd
Adds the card of name Increase or [2] to the Target's deck.

- RandomAdd
Adds a random card of rarity [2] or Increase to the Target's hand.
Append a color to the rarity to specify a color. Ie: LegendaryRed.

- Cost
Reduces the Target player's life points by Increase or [2].

- Inflict
Inflicts Increase or [2] damage to the enemy player's lifepoints.

- Strenghten
Adds Increase or [2] to Target cards' power. [3] can be used as a further modifier.
Ie: {"Strenghten", 200, "ColorBlue"}

- Swap
Swaps the target's Power and Health stats.

- Shedletsky

- ColorName (ie. "Blue")
Adds Increase or [2] icons of the specified color to the Target player.
