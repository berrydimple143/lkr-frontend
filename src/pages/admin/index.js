import * as cookie from 'cookie';
import AdminLayout from '@/components/layouts/AdminLayout';
import DefaultCard from '@/components/cards/default';
import SalesChart from '@/components/charts/SalesChart';
import { getUsers } from '@/services/user';
import { getClients } from '@/services/client';
import { getAgents } from '@/services/agent';
import { getAreas } from '@/services/area';
import { getManagers } from '@/services/manager';
import React, { useState, useEffect } from "react";
import { Select } from 'antd';

const years = [
  2024,
  2023,
  2022,
  2021,
  2020,
  2019,
  2018,
  2017,
  2016,
  2015,
  2014,
  2013,
  2012,
  2011,
  2010,
  2009,
  2008,
  2007,
  2006,
  2005,
  2004,
  2003,
  2002,
  2001,
  2000,
  1999,
  1998,
  1997
];

export async function getServerSideProps({ req }) {
  const cookieData = cookie.parse(req.headers.cookie || '');
  const { users } = await getUsers(cookieData.token);
  const { clients } = await getClients(cookieData.token);
  const { areas } = await getAreas(cookieData.token);
  const { agents } = await getAgents(cookieData.token);
  const { managers } = await getManagers(cookieData.token);  

  return {
    props: { info: cookieData, users, clients, agents, areas, managers },
  }
}

export default function Admin({ info, users, clients, agents, areas, managers })
{
  
    return (
        <AdminLayout title="Lion King Realty Administration Panel" chosenMenu="1">
            <DefaultCard 
              user_count={users.length} 
              client_count={clients.length} 
              agent_count={agents.length} 
              areas_count={areas.length} 
              managers_count={managers.length} 
            />
            <div className='flex flex-col w-full mt-5 p-2 border border-dashed border-gray-400 bg-red-100'>
            <Select
              className="main-input"
              style={{ width: '200px' }} 
              placeholder="Select a year here...">
              {" "}
              {years && years.map((item, index) => <Select.Option value={item} key={index}>{item}</Select.Option>)}                 
              </Select>
              <SalesChart 
                width={900}
                height={350}
              />
            </div>            
        </AdminLayout>
    );
}
