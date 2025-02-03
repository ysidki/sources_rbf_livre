import openai

openai.api_key = "your_api_key_here"

# Make a call to the GPT-4 model
response = openai.chat.completions.create(
    model="gpt-4",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Hello ChatGPT, how are you today?"},
    ]
)

# Print the response
print(response.choices[0].message.content)
