import React, { useState, useEffect } from "react";
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

export default function SalesChart({ width, height, expensesPerMonth, maxExpenses }) {
   
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
    const options = {
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
            suggestedMax: maxExpenses + 20,
        }
      }
    };    
    const data = {
      labels,
      datasets: [
        {
          label: 'Payments',
          data: [50, 100, 90, 70, 300, 50, 100, 90, 70, 300, 200, 130],
          backgroundColor: '#1B9B09',
        },
        {
          label: 'Expenses',
          data: [
              expensesPerMonth[0], expensesPerMonth[1], expensesPerMonth[2], 
              expensesPerMonth[3], expensesPerMonth[4], expensesPerMonth[5], 
              expensesPerMonth[6], expensesPerMonth[7], expensesPerMonth[8], 
              expensesPerMonth[9], expensesPerMonth[10], expensesPerMonth[11]],
          backgroundColor: '#C9270A',
        },
      ],
    };  

  return <Bar 
            width={width}
            height={height}
            options={options} 
            data={data} 
        />;
}
