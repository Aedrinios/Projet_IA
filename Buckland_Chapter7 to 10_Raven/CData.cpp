#include "CData.h"
#include "Raven_Bot.h"
#include "Raven_Game.h"
#include "defines.h"
#include "Raven_WeaponSystem.h"
#include "c:\Users\corentin\Desktop\Licence Conception jeu vidéo\Projet_IA\Buckland_Chapter7 to 10_Raven\armory\Raven_Weapon.h"


//------------------------------------------------------------------------
//
//  constant training data
//------------------------------------------------------------------------

const double InputVectors[NUM_PATTERNS][NUM_VECTORS*2]=
{
	/*Raven_Game::m_pSelectedBot->Pos().x, Raven_Game::m_pSelectedBotStatic->Pos().y,				  //position du bot selectionné 
	Raven_Game::LastClickedPosition.x,Raven_Game::LastClickedPosition.y,                      //position du dernier click
	Raven_Game::m_pSelectedBotStatic->GetWeaponSys()->GetCurrentWeapon()->GetType(),
	Raven_Game::m_pSelectedBotStatic->GetWeaponSys()->GetCurrentWeapon()->NumRoundsRemaining()*/
}; 

const char* Names[NUM_PATTERNS]=
{
  "Right",
  "Left",
  "Down",
  "Up",
  "Clockwise Square",
  "Anti-Clockwise Square",
  "Right Arrow",
  "Left Arrow",
  "South West",
  "South East",
  "Zorro"

};

//--------------------------------- Init ---------------------------------
//
//  Initializes the appropriate vectors with the const training data
//------------------------------------------------------------------------
void CData::Init()
{	
	/*
	  //for each const pattern  
	  for (int ptn=0; ptn<m_iNumPatterns; ++ptn)
	  {
		//add it to the vector of patterns
		vector<double> temp;

		for (int v=0; v<m_iVectorSize*2; ++v)
		{
		  temp.push_back(InputVectors[ptn][v]);
		}
    
		m_vecPatterns.push_back(temp);

		//add the name of the pattern
		m_vecNames.push_back(Names[ptn]);
	  }*/
}

// --------------------------- CreateTrainingSetFromData -----------------
//
//  this function creates a training set from the data defined as constants
//  in CData.h. 
//------------------------------------------------------------------------
void CData::CreateTrainingSetFromData()
{
  //empty the vectors
  m_SetIn.clear();
  m_SetOut.clear();
  
  //add each pattern
  for (int ptn=0; ptn<m_iNumPatterns; ++ptn)
  {    
    //add the data to the training set
    m_SetIn.push_back(m_vecPatterns[ptn]);

    //create the output vector for this pattern. First fill a 
    //std::vector with zeros
    vector<double> outputs(m_iNumPatterns, 0);

    //set the relevant output to 1
    outputs[ptn] = 1;

    //add it to the output set
    m_SetOut.push_back(outputs);
  }
}

//------------------------- PatternName ----------------------------------
//
//  returns the pattern name at the given value
//------------------------------------------------------------------------
string CData::PatternName(int val)
{
  if (m_vecNames.size() > 0)
  {
    return m_vecNames[val];
  }

  else
  {
    return "";
  }
}

//------------------------- AddData -------------------------------------
//
//  adds a new pattern to data
//-----------------------------------------------------------------------
bool CData::AddData(vector<double> &data)
{
  //check that the size is correct
  if (data.size() != m_iVectorSize*2)
  {
    MessageBox(NULL, "Incorrect Data Size", "Error", MB_OK);

    return false;
  }
  //add the data
  m_vecPatterns.push_back(data);

  //keep a track of number of patterns
  ++m_iNumPatterns;
  
  //create the new training set
  CreateTrainingSetFromData();

  return true; 
}

