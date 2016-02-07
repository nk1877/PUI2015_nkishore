import pylab as pl
import pandas as pd
import scipy.stats as stats
import numpy as np

import os

df=pd.read_csv('/Users/nikhilkishore/Dropbox/nyuclasses/PUI/201504-citibike-tripdata.csv')
#df is the dataframe where the content of the csv file is stored
#list(df.columns.values)
plus35 = df[df['birth year'] <= 1980]
#print plus35['birth year']
less35 = df[df['birth year'] > 1980]
plus35['birth year'].plot(kind="bar")
less35['birth year'].plot(kind="bar", stacked= "true")
#ax.xaxis.set_ticklabels(["old","young"], fontsize=20)
