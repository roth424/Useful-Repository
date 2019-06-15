#%% Change working directory from the workspace root to the ipynb file location. Turn this addition off with the DataScience.changeDirOnImportExport setting
# ms-python.python added
import os
try:
	os.chdir(os.path.join(os.getcwd(), 'Day010-Pandas1'))
	print(os.getcwd())
except:
	pass

#%%
# Dependencies
import pandas as pd


#%%
# Create a DataFrame with given columns and value
hey_arnold = pd.DataFrame(
    {"Character_in_show": ["Arnold", "Gerald", "Helga", "Phoebe", "Harold", "Eugene"],
     "color_of_hair": ["blonde", "black", "blonde", "black", "unknown", "red"],
     "Height": ["average", "tallish", "tallish", "short", "tall", "short"],
     "Football_Shaped_Head": [True, False, False, False, False, False]
     })

hey_arnold


#%%
# Rename columns for readability
hey_arnold_renamed = hey_arnold.rename(columns={"Character_in_show": "Character",
                                                "color_of_hair": "Hair Color",
                                                "Height": "Height",
                                                "Football_Shaped_Head": "Football Head"
                                                })
hey_arnold_renamed


#%%
# Organize the columns so they are in a more logical order
hey_arnold_alphabetical = hey_arnold_renamed[[
    "Character", "Football Head", "Hair Color", "Height"]]
hey_arnold_alphabetical


#%%



