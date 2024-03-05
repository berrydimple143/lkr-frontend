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
      text: 'Monthly Payments and Expenses',
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
      label: 'Payments',
      data: [50, 100, 90, 70, 300, 50, 100, 90, 70, 300, 200, 130],
      backgroundColor: '#1B9B09',
    },
    {
      label: 'Expenses',
      data: [150, 120, 95, 30, 200, 150, 105, 50, 40, 90, 160, 110],
      backgroundColor: '#C9270A',
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
