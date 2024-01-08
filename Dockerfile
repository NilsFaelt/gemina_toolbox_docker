FROM kalilinux/kali-rolling


RUN apt-get update && \
    apt-get install -y python3 \
    git

RUN mkdir /tool_box
WORKDIR /tool_box
RUN git clone https://github.com/NilsFaelt/python_toolbox.git .

RUN echo 'alias tb="python3 /tool_box/main.py"' >> /root/.bashrc