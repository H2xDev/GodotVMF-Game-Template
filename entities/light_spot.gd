@tool
class_name VLightSpot extends VLight

func _apply_entity(e):
	super._apply_entity(e);

	light.spot_angle = e._cone;
	light.light_energy = e._light.a;
	defaultLightEnergy = light.light_energy;
	e.angles.z = e.get("pitch", -90);
	e.angles.x = 0;

	basis = get_entity_basis(e);
	rotation.y -= PI / 2;
