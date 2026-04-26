#!/usr/bin/env python3

import boto3
from datetime import datetime, timedelta

# Inicializar cliente AWS
ce_client = boto3.client('ce', region_name='us-east-1')

def get_cost_analysis():
    """Análise de custos dos últimos 30 dias"""

    end_date = datetime.now().date()
    start_date = end_date - timedelta(days=30)

    response = ce_client.get_cost_and_usage(
        TimePeriod={
            'Start': str(start_date),
            'End': str(end_date)
        },
        Granularity='DAILY',
        Metrics=['UnblendedCost'],
        GroupBy=[
            {
                'Type': 'DIMENSION',
                'Key': 'SERVICE'
            }
        ]
    )

    print("=" * 60)
    print("ANÁLISE DE CUSTOS AWS - ABSTERGO INDUSTRIES")
    print(f"Período: {start_date} a {end_date}")
    print("=" * 60)

    for result in response['ResultsByTime']:
        print(f"\nData: {result['TimePeriod']['Start']}")
        for group in result['Groups']:
            service = group['Keys'][0]
            cost = float(group['Metrics']['UnblendedCost']['Amount'])
            print(f"  {service}: ${cost:.2f}")

if __name__ == "__main__":
    get_cost_analysis()
