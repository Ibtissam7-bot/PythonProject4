import pandas as pd
import numpy as np
#1
df= pd.DataFrame({'Nom':['Amine','Lina','Youssef','Salma','Nora'],'Age':[25,22,35,30,np.nan],'Ville':['Casa','Rabat','Fes','Casa','Tanger']})
print(df)
print(df.head(5))
print(df.info())
print(df.describe())
#2
print(df['Ville'])
print(df[df['Age']>25])
print("Les nom des personnes de Casa sont :\n ", df[df['Ville']=='Casa'][['Nom','Ville']])
#3
df['Naissance']=2025-df['Age']
print(df)
df['Nom']=df['Nom'].str.upper()
print(df)
df.rename(columns={'Ville':'Localisation'},inplace=True)
print(df)
#4
df.loc[2,['Age']]=np.nan
print(df.isnull().sum())
df.Age=df.Age.fillna(df.Age.mean())
df.Naissance=2025-df.Age
print(df)
#5
df_sorted=df.sort_values(by='Age', ascending=False)
print(df_sorted)
df.drop(columns=['Naissance'], inplace=True)
df.drop(index=1, inplace=True)
print(df)
