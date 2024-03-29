FROM kalilinux/kali-rolling

RUN apt-get update && \
    apt-get install -y python3 \
    python3-pip \
    vim \
    git

RUN mkdir /tool_box
WORKDIR /tool_box
RUN git clone https://github.com/NilsFaelt/python_toolbox.git .


RUN pip3 install httpx \
    reportlab \ 
    selenium

RUN echo 'alias tb="python3 /tool_box/main.py"' >> /root/.bashrc
