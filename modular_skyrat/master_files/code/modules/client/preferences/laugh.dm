/datum/preference/choiced/laugh
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "character_laugh"
	COOLDOWN_DECLARE(laugh_test_cooldown)


/datum/preference/choiced/laugh/init_possible_values()
	return assoc_to_keys(GLOB.laugh_types)

/datum/preference/choiced/laugh/apply_to_human(mob/living/carbon/human/target, value)
	var/laugh_id = GLOB.laugh_types[value]
	if(laugh_id)
		var/datum/laugh_type/laugh_type = new laugh_id
		target.selected_laugh = laugh_type

/datum/preference_middleware/laugh/proc/play_laugh(list/params, mob/user)
	if(!COOLDOWN_FINISHED(src, laugh_test_cooldown))
		return TRUE
	if(user.gender == MALE || !LAZYLEN(H.selected_laugh.female_laughsounds))
		return pick(H.selected_laugh.male_laughsounds)
	else
		return pick(H.selected_laugh.female_laughsounds)




	SEND_SOUND(user, preferences.read_preference(/datum/preference/choiced/laugh)

	COOLDOWN_START(src, laugh_test_cooldown, 0.5 SECONDS)
	return TRUE
