//-----------------------------------------------------------------------------
//B@(#)
//
// Filename.......: SkypePacketLossAnalysis.cpp
// Author.........: Fanyi Duanmu (Phoenix)
// Creation Date..: 04/02/2013
// Description....: This Program is used to mark lost packets during Skype P2P communication
//					Input: Sender Packet Log with Timestamp and Identification
//					Output: Packet Analysis Log with lost packets marked with Boolean variable bFlag
//
// Copyright (C) 2013 Video Lab, Polytechnic Institute of New York University
//
// Revision history:
// Date			Responsible			Ver.		Reason
// 04/02/2013	Fanyi Duanmu		1			Initial Version
//-----------------------------------------------------------------------------

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cstdlib>
#include <vector>
using namespace std;

class sample
{
	int iIdentification;
	double dTimeStamp;
	bool bFlag;
public:
	sample(int iIdentification,double dTimeStamp,bool bFlag):iIdentification(iIdentification), dTimeStamp(dTimeStamp), bFlag(bFlag){}
	int GetIdentification()	{return iIdentification;}
	double GetTimeStamp()	{return dTimeStamp;}
	int GetFlag()			{return bFlag==true?1:0;}
};

int main()
{
	vector<sample> smpl2;
	vector<sample> smpl1;
	
	string line;
	string word[10];
	ifstream read1,read2;
	read1.open("C1.txt");
	read2.open("C2.txt");

	double dTimeStamp2;
	int iIdentification2;
	while(getline(read2,line))
	{
		unsigned pos1 = line.find(" ");
		unsigned pos2 = line.find("(");
		unsigned pos3 = line.find(")");
		string sTimeStamp =line.substr(0,pos1);
		string sIdentification = line.substr(pos2+1,pos3-pos2-1);
		istringstream (sTimeStamp) >> dTimeStamp2;
		istringstream (sIdentification) >> iIdentification2;
		smpl2.push_back(sample(iIdentification2,dTimeStamp2,true));
	}
	
	/*
	cout<<"--------------------------------------------------"<<endl;
	cout<<"Please Enter Sender Skype Trace File Name(.txt):"<<endl;
	cout<<"--------------------------------------------------"<<endl;
	cin>>infile1;
	ifs.open(infile1.c_str());

	cout<<"--------------------------------------------------"<<endl;
	cout<<"Please Enter Receiver Skype Trace File Name(.txt):"<<endl;
	cout<<"--------------------------------------------------"<<endl;
	cin>>infile2;
	ifs.open(infile2.c_str());
	*/

	double dTimeStamp1;
	int iIdentification1;
	long pos4 = 0;

	ofstream destination("D:\\Sample.txt");
	if(!destination) return 0;

	while(getline(read1,line))
	{
		bool bFlag1 = false;
		unsigned pos1 = line.find(" ");
		unsigned pos2 = line.find("(");
		unsigned pos3 = line.find(")");
		string sTimeStamp =line.substr(0,pos1);
		string sIdentification = line.substr(pos2+1,pos3-pos2-1);
		istringstream (sTimeStamp) >> dTimeStamp1;
		istringstream (sIdentification) >> iIdentification1;

		for(long i=pos4;(i<pos4+10 && i<smpl2.size());i++)
		{
			if(iIdentification1 == smpl2[i].GetIdentification() && (i - pos4 <= 10)) 
			{
				cout<<"A:"<<pos4<<"	"<<iIdentification1<<"	"<<dTimeStamp1<<"	"<<smpl2[i].GetIdentification()<<"	"<<smpl2[i].GetTimeStamp()<<endl;
				pos4 = i;
				break;
			}
			if(i==(smpl2.size()-1)||i==(pos4+9)) bFlag1 = true;
			cout<<"B:"<<pos4<<"	"<<iIdentification1<<"	"<<dTimeStamp1<<"	"<<smpl2[i].GetIdentification()<<"	"<<smpl2[i].GetTimeStamp()<<endl;
		}

		destination<<dTimeStamp1<<"	"<<iIdentification1<<"	"<<bFlag1<<endl;
	}

	destination.close();	
	read1.close();
	read2.close();
	return 0;
}