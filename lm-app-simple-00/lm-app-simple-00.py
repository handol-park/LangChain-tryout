# [[file:notes.org::*App][App:1]]
from langchain import OpenAI
lm = OpenAI(temparature=0.9)
text = "What is the meaning of life?"
print(lm(text))
# App:1 ends here
