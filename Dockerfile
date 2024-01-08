FROM kalilinux/kali-rolling

RUN apt-get update && \
    apt-get install -y \
    nmap \
    sqlmap \
    metasploit-framework \
    wireshark \
    john \
    hydra \
    aircrack-ng \
    maltego \
    nikto \
    wpscan \
    burpsuite \
    hashcat \
    gobuster \
    dirb \
    volatility

RUN apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && \
    apt-get install -y python3 git

RUN mkdir /tool_box
WORKDIR /tool_box
RUN git clone https://github.com/NilsFaelt/python_toolbox.git .

RUN echo 'alias tb="python3 /tool_box/main.py"' >> /root/.bashrc
