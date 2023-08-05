import requests
import json
import pandas as pd

response = requests.get('https://jsonplaceholder.typicaode.com/posts/')

data = json.loads(response.text)

print(data['title'])

# Assume we have some JSON data
# data = [
#     {"name": "John", "age": 30, "city": "New York"},
#     {"name": "Jane", "age": 25, "city": "Chicago"},
#     {"name": "Mike", "age": 35, "city": "San Francisco"}
# ]

# Convert the JSON data to a DataFrame
df = pd.DataFrame(data)

# Print the DataFrame
print(df)

df.to_csv('data.csv', index=False)

print("Data exported")


