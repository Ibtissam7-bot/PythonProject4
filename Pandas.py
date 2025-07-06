#Challenge 1
import numpy as np
import pandas as pd
df=pd.read_excel('Concrete_Data.xls')
print(df)
print(df.isnull().sum())
df=df.fillna(df.mean())
print(df.isnull().sum())
print(df)
#2
df_fin = pd.DataFrame({
    "transaction_id": [100, 101, 102, 103, 104],
    "amount": [250, 4_500, 980, 3_200, 150]
})
df_fin=df_fin[df_fin.amount>1000]
print(df_fin)
#3
df_vente= pd.DataFrame({
    "region": ["Nord", "Sud", "Nord", "Est", "Sud", "Est"],
    "Ventes": [250, 4_500, 980, 3_200, 150, 300],})
df_sorted=df_vente.groupby('region')['Ventes'].sum()
print(df_sorted)
#4
# DataFrame CLIENT
df_clients = pd.DataFrame({
    "customer_id": [1, 2, 3],
    "nom": ["Ali", "Sara", "Lina"]
})
# DataFrame commandes
df_orders = pd.DataFrame({
    "order_id":   [10, 11, 12, 13],
    "customer_id": [1, 2, 1, 3],
    "total":      [250, 400, 70, 120]
})
df_merged=pd.merge(df_orders,df_clients,on='customer_id')
print(df_merged)
#5
df_prod = pd.DataFrame({
    "produit": ["Pomme", "Pomme", "Poire", "Pomme", "Poire"],
    "region":  ["Nord", "Sud",  "Nord",  "Est",   "Sud"],
    "ventes":  [100,    80,     60,      120,     90]
})
print(df_prod)
new_df=pd.DataFrame.pivot_table(df_prod,values='ventes',index='produit',columns='region',aggfunc='sum').fillna(0)
print(new_df)