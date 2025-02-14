FROM python:3

# Identify the maintainer of an image
LABEL version="0.0.1"
LABEL maitainer="uggoprince@gmail.com"

RUN echo 'n=15\n\
for i in range(n):\n\
    print(((n-(i+1))*" ")+(((2*i)+1)*"*"))\n\
for i in range(1,n):\n\
    print(((i)*" ")+(((((n-i)*2)-1)*"*")))' > script.py

CMD ["python", "script.py"]