import AdminLayout from '../../components/layouts/AdminLayout';
import DefaultCard from '../../components/cards/default';
import * as cookie from 'cookie';
import { getUsers } from '../../services/user';
import { getClients } from '../../services/client';
import { getAgents } from '../../services/agent';
import { getAreas } from '../../services/area';
import React, { useState, useEffect } from "react";

export async function getServerSideProps({ req }) {
  const cookieData = cookie.parse(req.headers.cookie || '');
  const { users } = await getUsers(cookieData.token);
  const { clients } = await getClients(cookieData.token);
  const { areas } = await getAreas(cookieData.token);
  const { agents } = await getAgents(cookieData.token);

  return {
    props: { info: cookieData, users, clients, agents, areas },
  }
}

export default function Admin({ info, users, clients, agents, areas })
{
  
    return (
        <AdminLayout title="Lion King Realty Administration Panel" chosenMenu="1">
            <DefaultCard user_count={users.length} client_count={clients.length} agent_count={agents.length} areas_count={areas.length} />
        </AdminLayout>
    );
}
