/datum/preference/choiced/scream
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "character_scream"
	COOLDOWN_DECLARE(scream_test_cooldown)

/datum/preference/choiced/scream/init_possible_values()
	return assoc_to_keys(GLOB.scream_types)

/datum/preference/choiced/scream/apply_to_human(mob/living/carbon/human/target, value)
	var/scream_id = GLOB.scream_types[value]
	if(scream_id)
		var/datum/scream_type/scream_type = new scream_id
		target.selected_scream = scream_type

/datum/preference_middleware/scream/proc/play_scream(list/params, mob/user)
	if(!COOLDOWN_FINISHED(src, scream_test_cooldown))
		return TRUE
	if(user.gender == FEMALE && LAZYLEN(user.selected_scream.female_screamsounds))
		return pick(user.selected_scream.female_screamsounds)
	else
		return pick(user.selected_scream.male_screamsounds)




	SEND_SOUND(user, preferences.read_preference(/datum/preference/choiced/scream)

	COOLDOWN_START(src, scream_test_cooldown, 0.5 SECONDS)
	return TRUE
