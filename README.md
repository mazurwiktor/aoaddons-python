pyaoaddons
==========

<a href="https://github.com/mazurwiktor/albion-online-addons"> **Powered by Albion Online Addons** <img src="https://raw.githubusercontent.com/mazurwiktor/albion-online-addons/master/assets/albion-online-addons.png" width="100"></a>

# API reference

## subscribe

Args: Callable[dict]

Registers callback which is going to be called on each game event

## initialize

Initialize logging and packet sniffing.

After invocation library starts to listen to game packets.

> **Note**: logs are placed in `aoaddons.log` file

Returns `InitializationResult`

## item_category_mapping

Dictionary containing human readable category names for coded items.

E.g 
```python
{
    "T6_POTION_HEAL": "potion"
}
```

## localization_mapping

Dictionary containing human readable names for coded items.

E.g 
```python
{
    "T8_ARTEFACT_2H_CURSEDSTAFF_MORGANA": "Elder's Bloodforged Catalyst"
}
```

## Available game events are visible [here](https://docs.rs/aoaddons/0.1.6/aoaddons/photon_messages/messages/index.html)

Latest messages decoding recipe can be found [here](https://github.com/mazurwiktor/albion-online-addons/blob/master/assets/messages.json)