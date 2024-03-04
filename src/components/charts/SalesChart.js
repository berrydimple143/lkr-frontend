import React from 'react';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
} from 'chart.js';
import { Bar } from 'react-chartjs-2';
import { faker } from '@faker-js/faker';

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend
);

export const options = {
  responsive: true,
  plugins: {
    legend: {
      position: 'top',
    },
    title: {
      display: true,
      text: 'Monthly Sales and Expenses',
    },
  },
  scales: {
    y: {
        suggestedMax: 350,
    }
  }
};

const labels = [
        'January', 
        'February', 
        'March', 
        'April', 
        'May', 
        'June', 
        'July', 
        'August', 
        'September',
        'October',
        'November',
        'December',
    ];

export const data = {
  labels,
  datasets: [
    {
      label: 'Sales',
      data: [50, 100, 90, 70, 300, 50, 100, 90, 70, 300, 200, 130],
      backgroundColor: 'rgba(255, 99, 132, 0.5)',
    },
    {
      label: 'Expenses',
      data: [150, 120, 95, 30, 200, 150, 105, 50, 40, 90, 160, 110],
      backgroundColor: 'rgba(53, 162, 235, 0.5)',
    },
  ],
};

export default function SalesChart({ width, height }) {
  return <Bar 
            width={width}
            height={height}
            options={options} 
            data={data} 
        />;
}
