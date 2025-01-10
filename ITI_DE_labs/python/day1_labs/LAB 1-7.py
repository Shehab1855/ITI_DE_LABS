# -*- coding: utf-8 -*-
"""
Created on Tue Dec  3 13:46:41 2024

@author: Shehab
"""

"""LAB 1-7
 You are given a list of tuples, where each tuple contains a location name and its latitude and longitude coordinates. 
Your task is to:
 1.Find the northernmost, southernmost, easternmost, and westernmost locations.
 2.For each of these extreme locations, calculate the "distance from the equator" (based on latitude alone).
 3.Create a final dictionary that:
 • Stores each of the extreme locations and their calculated distance from the equator.
 • Filters out any location with a distance of less than 10 units from the equator.
 4.If no location meets the criteria for an extreme position (based on the 10-unit rule), indicate "No qualifying locations" for that position.
 Input Format
 • A list of tuples locations, where each tuple is structured as:
 (location_name, latitude, longitude)
 Constraints
 • The list contains at least one location.
 • Each location has a unique name.
 • Latitude values range from -90 to 90, and longitude values range from -180 to 180.
 Output Format
 Example
 • Print a dictionary with the keys "northernmost","southernmost", "easternmost", and "westernmost".
 • Each key’s value should be a list of tuples containing:
 • The location name
 • Latitude
 • Longitude
 • Distance from the equator
 • If no qualifying location meets the 10-unit rule, print "No qualifying locations" for that direction
 """
 # In[1]:
location =[]

        
while True :
    city= input("enter city name or 0 to end :")
    if city =='0':
        break
    else:
        latitude= float(input("enter city latitude :"))
        longitude= float(input("enter city longitude :"))
        while not ((latitude >= -90 and latitude <= 90) and (longitude >= -180 and longitude <= 181)):
            print("enter vaild range Latitude values  from -90 to 90, longitude values  from -180 to 180")
            latitude= float(input("enter city latitude "))
            longitude= float(input("enter city longitude "))
        else:   
            location.append((city , float(latitude) , float(longitude)))

print(location)
 # In[1]:
dic ={}
lat=[]
log=[]
for i , k , y in location:
    lat += [k]
    log += [y]    
    
max_lat= max(lat)
max_log =max(log)

min_lat = min(lat)
min_log = min(log)
print(max_lat,max_log,min_lat,min_log)

# In[1]:
counter =0
for i , k , y in location:
    if max_lat == k:
       dic['northernmost']=(i,k,y,abs(k))
       if abs(k) <10:
           del dic['northernmost'] 
           counter +=1
    if max_log == y:  
        dic['easternmost']=(i,k,y,abs(k))
        """
        if abs(k) <10:
            del dic['easternmost'] 
            counter +=1"""
    if min_lat == k:
       dic['southernmost']=(i,k,y,abs(k))
       if abs(k) <10:
           del dic['southernmost'] 
           counter +=1
    if min_log == y:  
       dic['westernmost']=(i,k,y,abs(k))
       if abs(k) <10:
           del dic['westernmost'] 
           counter +=1

print(dic)
if counter == 0:
    print("No qualifying locations")





