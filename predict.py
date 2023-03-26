from langchain.llms import OpenAI

llm = OpenAI(temperature=0.9)

text = "What is the meaning of life?"
print(llm(text))
