FROM ubuntu
RUN curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null
RUN echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null
RUN apt-get update && apt-get install -y homebridge
RUN mkdir /homebridge
#RUN npm set global-style=true \
#  && npm set audit=false \ 
#  && npm set fund=false
