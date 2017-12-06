#ifndef TRIGGER_TEAMWEAPON_H
#define TRIGGER_TEAMWEAPON_H
#pragma warning (disable:4786)
//-----------------------------------------------------------------------------
//
//  Name:     Trigger_TeamWeapon.h
//
//
//  Desc:     This trigger 'gives' the triggering bot a weapon 
//            from the bot that just died whom were in the same team 
//
//-----------------------------------------------------------------------------
#include "Triggers/Trigger_Respawning.h"
#include "../Raven_Bot.h"
#include <iosfwd>
#include <list>
#include <vector>
#include "2d/vector2d.h"
#include "time/crudetimer.h"
#include "../armory/Raven_Weapon.h"


class Trigger_TeamWeapon : public Trigger_Respawning<Raven_Bot>
{
private:

	struct TeamWeaponRecord
	{
		Vector2D        Position;
		Raven_Weapon*   pWeapon;
		double    TimeCreated;

		TeamWeaponRecord(Vector2D pos, Raven_Weapon* weapon) : Position(pos), 
															   pWeapon(weapon),
															   TimeCreated(Clock->GetCurrentTime())
		{}
	};

private:

	typedef std::list<TeamWeaponRecord> TeamWeaponList;

private:

	//how long a grave remains on screen
	double						  m_dLifeTime;

	TeamWeaponList                m_TeamWeaponList;

	Vector2D                      m_vPos;
	Raven_Weapon*				  m_pWeapon;

	//vrtex buffers for rocket shape
	std::vector<Vector2D>         m_vecRLVB;
	std::vector<Vector2D>         m_vecRLVBTrans;

public:

	//this type of trigger is created when reading a map file
	Trigger_TeamWeapon(double lifetime);

	//if triggered, this trigger will call the PickupWeapon method of the
	//bot. PickupWeapon will instantiate a weapon of the appropriate type.
	void Try(Raven_Bot*);

	//draws a symbol representing the weapon type at the trigger's location
	void Render();

	void Read();

	void Update();

	void AddTeamWeapon(Vector2D pos, Raven_Weapon* weapon);
};



#endif