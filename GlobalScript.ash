// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.
struct type1 //chakras
{
  int level;
  int exp;
  int chakraname; //points to globalstring
  int power[5];//points to which powers are this chakra's
  int weak; //which other chakra is it weak against
};

struct type2 //powers
{
  int str;
  int powername;//points to globalstring
  int on; //is it available
  int type;//is str healing,hurting,status_altering  
  int cost; //chi cost of power
};

struct type3 //rings
{
  int str;
  int def;
  int speed;
  int hp;
  int mp;
  int chi;
  int index; //points to inv number
  int chakra[2];//0 points to which chakra, 1 points to how much >> as im if it improves your chakra str
};

struct type4 //stats
{
  int level;
  int maxhp;
  int defense;
  int strength;
  int maxmp;
  int speed;
  int exp;
  int name; //points to globalstring
  int view; //which char
  int levelup; //amount of exp needed for levelup
  int mod; //modifier for level up
  int binmod; //binary modifier for levelup
  int nextmod; //next level at which modifier gets changed
  int strmod;
  int hpmod;
  int chimod;
  int mp;
  int hp;
  int chi;
  int maxchi;
  int weaponID;
  int weaponSTR;
  int shieldID;
  int shieldSTR;
  int ringID;
  int sprite;   //which sprite slot for gui
  int chakratype; //which chakra is set
};

struct type5 //monsters
{
  int hp;
  int str;
  int def;
  int chidef;
  int speed;
  int randact[3];
  int spirit[3];
  int monname; //points to globalstring
  int montype;
  int index[3]; //what item index it can drop>>DROPS 1 very likely, DROPS 2 some time, drops 3 rarely
	int monexp; //how much exp monster gives
	int lvl; //the monster's level
	int view;
};

struct type6 //weapons
{
  int str;
  int def;
  int speed;
  int hp;
  int mp;
  int chi;
  int index; //points to inv number
};

struct type7 //shields
{
  int str;
  int def;
  int speed;
  int hp;
  int mp;
  int index; //points to inv number
};

struct type8 //side missions
{
  int index; //where in the mission
  int money; //how much money reward
  int type; //kind of mission : kill a monster, escort a caravan, collect an item, rescue someone,
  int item; //item received
  int days; //how many days
  int daycount; //which day was it started?
  int dial; //dialog about start of mission
  String name;
  String description;
};
  
struct type9 //trade prices
{
  int water;
  int fruit;
  int meat;
  int wood;
  int textile;
  int metal;
  int watermod;
  int fruitmod;
  int meatmod;
  int woodmod;
  int textilemod;
  int metalmod;
};

struct type10 //caves
{
  int tile[19];  //each tile
  int level; //
  int treasure[6]; //which tile is treasure on
  int ladder[5]; //which tile are ladders to other levels on(1: tile, 2:where to / 3:tile, 4: where to
  int boss[3]; //1:which tile, 2 what monster
  int streasure[3]; //special treasure: 1 which tile, 2 what treasure
  int goal; //which tile is goal on.
  int gate[11]; //where are the gates: 1-3-5-7-9: gates, 2-4-6-8-10:which wall
  int key[6];//which tiles are the keys for the gates
  int sgate[10];
  int skey[10];
  int visible[10];
  int entrance;
};

struct type11 
{
  int battleHP[20];
  int battletype[20];
  int max;
  int index[6];
  int experience;
};

import type11 monsterset[100];
import type5 monsters[20]; 
import type1 chakra[10];
import type2 powers[20];
import type3 rings[20];
import type6 swords[40];
import type7 shields[40];
import type4 partner[5];
import type8 mission[20];
import type9 trade[21];
import type10 cave[20];
import function drawtile(int tile);
import function chakralevelup();
import function setgui2();
import function statusmessage();
import function character_hit(int damage, int which);
import function monster_set(int temp1,int temp2,int temp3);
import function equip_item(int index);
import function use_item(int index);
import function slow_text(string overtext, int overcount, int textx, int texty,int font,int fontcolor);
import function hptext(int health, int charid, int ftcolor);
import function level_up(int which);
import function set_date(int daynum);
import function get_partner();
import function set_partner(int temppart);
import function hurt_monster();
import function introtext(string buffer, int x, int y);// Automatically converted interaction variables
import function RemoveMission(int MissionIndex);
import function TweenRevealGUI(GUI* GUIindex);
import function TweenMoveGUI(GUI* GUIindex, int destination, int amount);

import int IntVar_Global_1;
