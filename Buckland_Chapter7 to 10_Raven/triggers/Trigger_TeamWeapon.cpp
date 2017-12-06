#include "Trigger_TeamWeapon.h"
#include "misc/Cgdi.h"
#include "misc/Stream_Utility_Functions.h"
#include <fstream>
#include "../lua/Raven_Scriptor.h"
#include "../constants.h"
#include "../Raven_ObjectEnumerations.h"
#include "../Raven_WeaponSystem.h"
#include "../Common/Game/BaseGameEntity.h"

#include "Debug/DebugConsole.h"


///////////////////////////////////////////////////////////////////////////////

Trigger_TeamWeapon::Trigger_TeamWeapon(double lifetime) :
	Trigger_Respawning<Raven_Bot>(BaseGameEntity::GetNextValidID()),
	m_dLifeTime(lifetime)
{
	Read();

	//create the vertex buffer for the rocket shape
	const int NumRocketVerts = 8;
	const Vector2D rip[NumRocketVerts] = { Vector2D(0, 3),
		Vector2D(1, 2),
		Vector2D(1, 0),
		Vector2D(2, -2),
		Vector2D(-2, -2),
		Vector2D(-1, 0),
		Vector2D(-1, 2),
		Vector2D(0, 3) };

	for (int i = 0; i<NumRocketVerts; ++i)
	{
		m_vecRLVB.push_back(rip[i]);
	}
	debug_con << "Trigger Team Weapon Created " << "";
	SetActive();
}

void Trigger_TeamWeapon::Try(Raven_Bot* pBot)
{
	if (this->isActive() && this->isTouchingTrigger(pBot->Pos(), pBot->BRadius()))
	{
		pBot->GetWeaponSys()->AddWeapon(EntityType());

		Deactivate();
	}
}

void Trigger_TeamWeapon::Read()
{
	double x, y, r;
	int GraphNodeIndex;

	/*in >> x >> y >> r >> GraphNodeIndex;*/

	SetPos(Vector2D(m_vPos.x, m_vPos.y));
	SetBRadius(7.0);
	//SetGraphNodeIndex(GraphNodeIndex);

	//create this trigger's region of fluence
	AddCircularTriggerRegion(Pos(), script->GetDouble("DefaultGiverTriggerRange"));


	SetRespawnDelay((unsigned int)(script->GetDouble("Weapon_RespawnDelay") * FrameRate));
}

void Trigger_TeamWeapon::Update()
{
	TeamWeaponList::iterator it = m_TeamWeaponList.begin();
	while (it != m_TeamWeaponList.end())
	{
		if (Clock->GetCurrentTime() - it->TimeCreated > m_dLifeTime)
		{
			it = m_TeamWeaponList.erase(it);
		}
		else
		{
			++it;
		}
	}
}

void Trigger_TeamWeapon::AddTeamWeapon(Vector2D pos, Raven_Weapon* weapon)
{
	m_TeamWeaponList.push_back(TeamWeaponRecord(pos, weapon));
	debug_con << "Trigger Team Weapon Added " << "";
}


void Trigger_TeamWeapon::Render()
{
	TeamWeaponList::iterator it = m_TeamWeaponList.begin();
	Vector2D facing(-1, 0);
	for (it; it != m_TeamWeaponList.end(); ++it)
	{
		/*if (isActive())
		{*/
		switch (it->pWeapon->GetType()/*EntityType()*/)
		{
		case type_rail_gun:
		{
			gdi->BluePen();
			gdi->BlueBrush();
			gdi->Circle(it->Position, 3);
			gdi->ThickBluePen();
			gdi->Line(it->Position, Vector2D(it->Position.x, it->Position.y - 9));
			debug_con << "Render Trigger Team Weapon Rail Gun " << "";
		}

		break;

		case type_shotgun:
		{

			gdi->BlackBrush();
			gdi->BrownPen();
			const double sz = 3.0;
			gdi->Circle(it->Position.x - sz, it->Position.y, sz);
			gdi->Circle(it->Position.x + sz, it->Position.y, sz);
			debug_con << "Render Trigger Team Weapon Shotgun " << "";
		}

		break;

		case type_rocket_launcher:
		{

			Vector2D facing(-1, 0);

			m_vecRLVBTrans = WorldTransform(m_vecRLVB,
				it->Position,
				facing,
				facing.Perp(),
				Vector2D(2.5, 2.5));

			gdi->RedPen();
			gdi->ClosedShape(m_vecRLVBTrans);
			debug_con << "Render Trigger Team Weapon Rocket Launcher " << "";
		}

		break;

		}//end switch
		/*}*/
	}
}