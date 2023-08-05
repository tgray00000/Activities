import requests
from dotenv import load_dotenv
import pandas as pd
import json
import os

#response = requests.get('https://jsonplaceholder.typicode.com/posts')
#print(response.text)

load_dotenv()

api_key = os.getenv('API_KEY')
print(api_key)