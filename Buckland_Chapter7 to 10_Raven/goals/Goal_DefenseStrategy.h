#ifndef GOAL_DEFENSESTRATEGIE_H
#define GOAL_DEFENSESTRATEGIE_H
#pragma warning (disable:4786)
//-----------------------------------------------------------------------------
//
//  Name:   Goal_DefenseStrategie.h
//
//
//  Desc:   Follow path or dodge until the bot reach the item
//-----------------------------------------------------------------------------
#include "Goals/Goal_Composite.h"
#include "Raven_Goal_Types.h"
#include "../Raven_Bot.h"
#include "../navigation/Raven_PathPlanner.h"
#include "../navigation/PathEdge.h"


class Goal_DefenseStrategy : public Goal_Composite<Raven_Bot>
{
private:

	//a local copy of the path returned by the path planner
	std::list<PathEdge>  m_Path;

public:

	Goal_DefenseStrategy(Raven_Bot* pBot, std::list<PathEdge> path);

	//the usual suspects
	void Activate();
	int Process();
	void Render();
	void Terminate() {}
};


#endif

