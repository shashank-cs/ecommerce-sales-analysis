
import pandas as pd

df = pd.read_csv('../data/Sample - Superstore.csv')

df['Order Date'] = pd.to_datetime(df['Order Date'])
df['Ship Date'] = pd.to_datetime(df['Ship Date'])

df.drop_duplicates(inplace=True)

df['Order Year'] = df['Order Date'].dt.year
df['Order Month'] = df['Order Date'].dt.month
df['Profit Margin'] = df['Profit'] / df['Sales']

print("Total Sales:", df['Sales'].sum())
print("Total Profit:", df['Profit'].sum())
